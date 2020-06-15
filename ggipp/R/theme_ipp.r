#' Renvoie une palette
#' 
#' @return  Un thème ggplot2
#' @importFrom ggplot2 %+replace%
theme_ipp <- function () {
  (
    ggplot2::theme_minimal()
    %+replace% ggplot2::theme(
      panel.background  = ggplot2::element_blank(),
      plot.background = ggplot2::element_rect(fill = "transparent", colour = NA),
      legend.background = ggplot2::element_rect(fill = "transparent", colour = NA),
      legend.key = ggplot2::element_rect(fill = "transparent", colour = NA),
      legend.position = "bottom",
      legend.key.width = ggplot2::unit(0.05, "npc"),
      strip.background = ggplot2::element_rect(fill = "transparent", colour = NA)
    )
  )
}
