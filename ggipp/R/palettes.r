definition_palettes_ipp <- list(
  `principale` = couleurs_ipp("bleu_fonce", "bleu_clair"),
  `froide`     = couleurs_ipp("bleu_fonce", "bleu_clair", "gris_clair", "gris_fonce"),
  `chaude`     = couleurs_ipp("gris_clair", "gris_fonce", "rouge", "mauve"),
  `complete`   = couleurs_ipp("mauve", "rouge", "gris_clair", "gris_fonce", "bleu_fonce", "bleu_clair")
)

#' Renvoie une palette
#'
#' @param palette Nom de la palette définie dans definition_palettes_ipp
#' @param reverse Booléen pour inverser l'ordre des couleurs
#' @param ... Paramètres passés à grDevices::colorRampPalette
#' @return  Une fonction qui à un entier associe une palette avec ce nombre de couleurs
#' @export
palette_ipp <- function(palette = "principale", reverse = FALSE, ...) {
  pal <- definition_palettes_ipp[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
