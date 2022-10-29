#' @title plotCircPalette
#'
#' @param col a single column data frame labeled HEX in which the hexadecimal color codes have been stored
#' @param num the number of color codes inputted
#'
#' @return a color palette in color wheel form
#' @export
#'

#example data
#colors <- data.frame(HEX = c('#FF0000FF', '#80FF00FF', '#00FFFFFF', '#8000FFFF', '#E7298A'))
#num <- 5

plotCircPalette <- function(col, num) {
  create_slices <- num[1:num]
  create_slices [1] <- 1
  create_slices[is.na(create_slices)] <- 1

  pie(create_slices, labels = NA, col = col$HEX)
}

# piePlot <- plotCircPalette(colors, num)
