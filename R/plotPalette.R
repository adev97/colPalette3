#' @title plotPalette
#' @description converts input of hexadecimal color codes into a simple stack of all the colors
#'
#' @param col a single column data frame labeled HEX in which the hexadecimal color codes have been stored
#' @param num the number of color codes inputted
#'
#' @returns a color palette in stacked barplot form
#' @export
#'

#example data
#colors <- data.frame(HEX = c('#FF0000FF', '#80FF00FF', '#00FFFFFF', '#8000FFFF', '#E7298A'))
#num <- 5
#create_bars <- c(1, 1, 1, 1, 1)

plotPalette <- function(col, num) {
  create_bars <- num[1:num]
  create_bars[1] <- 1
  create_bars[is.na(create_bars)] <- 1
  #create barplot that is uniform boxes and each box has a color
  barplot(create_bars,space = 0, beside = FALSE, names.arg = col, col = col$HEX, axes = FALSE, axisnames = FALSE)
}
