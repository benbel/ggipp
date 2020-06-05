scale_color_ipp <- function(palette = "principale", discrete = TRUE, reverse = FALSE, ...) {
  pal <- palette_ipp(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("palette_ipp_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}


scale_fill_ipp <- function(palette = "principale", discrete = TRUE, reverse = FALSE, ...) {
  pal <- palette_ipp(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("palette_ipp_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}

