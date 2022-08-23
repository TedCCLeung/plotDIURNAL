## Theme for imitating Prism
theme_Prism <- function (
  base_size=7,
  base_family="Arial"
){
  half_line <- base_size/2
  theme (
    #1.436 in illustrator is 1.436/(ggplot2::.pt*72.27/96); 0.67 is a close approximation
    line = element_line(colour = "black", size = 0.67, linetype = 1, lineend = "square"),
    rect = element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
    text = element_text(family = base_family, face = "bold", colour = "black", size = base_size,
                        lineheight = 0.9,  hjust = 0.5, vjust = 0.5, angle = 0, margin = margin(), debug = FALSE),

    axis.line = element_line(colour = "black", size = 0.67, linetype = 1, lineend = "square"),
    axis.line.y.left = element_line(colour = "black", size = 0.67, linetype = 1, lineend = "square"),
    axis.text = element_text(size = base_size, colour = "black", face = "bold", family = base_family),
    axis.text.x = element_text(margin = margin(t = 0.8*half_line/2), face = "bold", family = base_family,
                               vjust = 1),
    axis.text.y = element_text(margin = margin(r = 0.8*half_line/2), face = "bold", family = base_family,
                               hjust = 1),
    axis.ticks = element_line(colour = "grey20"),
    #axis.ticks.length = unit(half_line/2, "pt"),
    axis.ticks.length = unit(3.9, "pt"),
    axis.title.x = element_text(face = "bold", family = base_family,
                                margin = margin(t = 0.8 * half_line,
                                                b = 0.8 * half_line/2)),
    axis.title.y = element_text(angle = 90, face = "bold", family = base_family,
                                margin = margin(r = 0.8 * half_line,
                                                l = 0.8 * half_line/2)),

    legend.background = element_blank(),
    legend.margin = margin(t=0.2, unit="cm"),
    legend.key = element_blank(),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.text = element_text(size = base_size, face = "bold", family = base_family),
    legend.text.align = NULL,
    legend.title = element_text(hjust = 0, face = "bold", family = base_family),
    legend.title.align = NULL,
    legend.position = "right",
    legend.direction = NULL,
    legend.justification = "center",
    legend.box = NULL,

    panel.background = element_blank(),
    panel.border = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.spacing = unit(7, "pt"),
    panel.margin.x = NULL,
    panel.spacing.y = NULL, panel.ontop = FALSE,

    strip.background = element_blank(),
    strip.text = element_text(colour = "black", size = base_size, face = "bold", family = base_family),
    strip.text.x = element_text(face = "bold", family = base_family,
                                margin = margin(t = half_line,
                                                b = half_line)),
    strip.text.y = element_text(angle = -90, face = "bold", family = base_family,
                                margin = margin(l = half_line,
                                                r = half_line)),
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),

    plot.background = element_rect(colour = "white"),
    plot.title = element_text(size = base_size, face = "bold", family = base_family,
                              margin = margin(b = half_line * 1.2)),
    plot.margin = margin(0.1,0.1,0.1,0.1),
    complete = TRUE
  )
}
