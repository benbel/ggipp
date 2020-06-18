definitions_couleurs_ipp <- c(
  `bleu_fonce` = "#005165",
  `bleu_clair` = "#008A9B",
  `gris_clair` = "#a9b4b8",
  `gris_fonce` = "#63696b",
  `rouge`      = "#7E0045",
  `mauve`      = "#805A73"
)

#' Renvoie le nom et le code hexadécimal des couleurs ipp.
#'
#' @param ... une str ou un intérable de str
#' @return Une liste str:str list de noms de couleurs et de codes hexadécimaux
#' @examples
#' couleurs_ipp('bleu_fonce')
#' @export
couleurs_ipp <- function(...) {
  couleurs <- c(...)

  if (is.null(couleurs))
    return (definitions_couleurs_ipp)

  definitions_couleurs_ipp[couleurs]
}
