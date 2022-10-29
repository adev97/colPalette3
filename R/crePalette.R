#' @title crePalette
#' @description this function takes in a user inputted string of hexadecimal colors and converts them to a vector of color names to aid in data visualization
#'
#' @param cols single column data frame labeled HEX in which the hexadecimal color codes have been stored
#'
#' @returns a vector of color strings directly associated with the hexadecimal values inputted
#'
#' @import plotrix
#' @export
#'

#example data set is cols
#colors <- data.frame(HEX = c('#FF0000FF', '#80FF00FF', '#00FFFFFF', '#8000FFFF', '#E7298A'))
#num <- 5

crePalette <- function(cols) {
  #data frame of colors as they match

  cols$name <- sapply(cols$HEX, color.id)

  return (cols)
}
