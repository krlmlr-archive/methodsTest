#' newTest
#' 
#' Tests the new() function
#' 
#' @export
#' @import methods
newTest <- function() {
  cl <- get("someClass")
  cl$new
}

someClass <- setRefClass("someClass")
