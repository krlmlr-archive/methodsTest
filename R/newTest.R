#' newTest
#' 
#' Tests the new() function
#' 
#' @export
newTest <- function() {
  cl <- get("someClass")
  cl$new
}

someClass <- setRefClass("someClass")
