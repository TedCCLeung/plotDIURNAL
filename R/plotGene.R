plotGene <- function(
  AT.ID,
  conditions = c("longday", "shortday")
  ){

  cond_names <- c("shortday" = "shortday",
                  "longday" = "longday",
                  "LHY" = "lhyox",
                  "ler.sd" = "LER_SD",
                  "col.sd" = "COL_SD",
                  "lux" = "lux-2_LDHH",
                  "phyb" = "phyB9_SD",
                  "COL.LDHH" = "COL_LDHH")

  df_data <- expression_data
  df_plot <- as.data.frame(t(do.call(cbind, lapply(conditions, function(x){return(df_data[AT.ID, startsWith(colnames(df_data), x)])}))))
  df_plot$time <- rep(seq(0, 44, 4), length(conditions))
  df_plot$photo <- rep(cond_names[conditions], each = 12)
  colnames(df_plot) <- c("gene", "time", "photo")

  ## Plot
  p <- ggplot2::ggplot(data = df_plot, ggplot2::aes_string(x = "time", y = "gene", color = "photo")) +
    ggplot2::geom_line(size = 1.5) +
    ggplot2::scale_x_continuous(limits = c(0, 48), breaks = seq(0, 48, 4)) +
    ggplot2::labs(x = "ZT time (h)", y = paste0("Expression"), color = "Photoperiod") +
    ggplot2::scale_color_manual(values=c("longday" = "#FF0000",
                                "shortday" = "#3182BD",
                                "LER_SD" = "#FFAAAA",
                                "COL_SD" = "#000080",
                                "lux-2_LDHH" = "#00FF00",
                                "lhyox" = "#006400",
                                "phyB9_SD" = "#722f37",
                                "COL_LDHH" = "#FFC0CB")) +
    theme_Prism(base_size = 14)

  p <- p + ggplot2::labs(title = AT.ID)

  return(p)
}
