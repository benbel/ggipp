#' Renvoie une échelle de couleur pour ggplot2
#'
#' @param palette Nom de la palette définie dans definition_palettes_ipp
#' @param reverse Booléen pour inverser l'ordre des couleurs
#' @param discrete Booléen pour rendre l'échelle discrète ou continue
#' @param ... Paramètres passés à ggplot2::scale_color_gradientn ou ggplot2::discrete_scale
#' @return Une échelle de couleur pour ggplot2
#' @export
scale_color_ipp <- function(palette = "principale", discrete = TRUE, reverse = FALSE, ...) {
  pal <- palette_ipp(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour", paste0("palette_ipp_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Renvoie une échelle de remplissage pour ggplot2
#'
#' @param palette Nom de la palette définie dans definition_palettes_ipp
#' @param reverse Booléen pour inverser l'ordre des couleurs
#' @param discrete Booléen pour rendre l'échelle discrète ou continue
#' @param ... Paramètres passés à ggplot2::scale_color_gradientn ou ggplot2::discrete_scale
#' @return Une échelle de remplissage pour ggplot2
#' @export
scale_fill_ipp <- function(palette = "principale", discrete = TRUE, reverse = FALSE, ...) {
  pal <- palette_ipp(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("palette_ipp_", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}

