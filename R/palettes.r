definition_palettes_ipp <- list(
  `principale` = couleurs_ipp("bleu_fonce", "bleu_clair"),
  `froide`     = couleurs_ipp("bleu_fonce", "bleu_clair", "gris_clair", "gris_fonce"),
  `chaude`     = couleurs_ipp("gris_clair", "gris_fonce", "rouge", "mauve"),
  `complete`   = couleurs_ipp("gris_clair", "gris_fonce", "rouge", "mauve", "bleu_fonce", "bleu_clair")
)

palette_ipp <- function(palette = "principale", reverse = FALSE, ...) {
  pal <- definition_palettes_ipp[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}

