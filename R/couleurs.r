definitions_couleurs_ipp <- c(
  `bleu_fonce` = "#005165",
  `bleu_clair` = "#008A9B",
  `gris_clair` = "#a9b4b8",
  `gris_fonce` = "#63696b",
  `rouge`      = "#7E0045",
  `mauve`      = "#805A73"
)


couleurs_ipp <- function(...) {
  couleurs <- c(...)

  if (is.null(couleurs))
    return (definitions_couleurs_ipp)

  definitions_couleurs_ipp[couleurs]
}

