plotGenes_DIURNAL <- function(AT.IDs, conditions = c("longday", "shortday")){
  plot_list <- lapply(AT.IDs, plotGene, conditions)
  return(ggpubr::ggarrange(plotlist = plot_list, ncol = 1))
}
