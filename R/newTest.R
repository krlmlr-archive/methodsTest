#' newTest
#' 
#' Tests the new() function
#' 
#' @export
newTest <- function() {
  cl <- get("someClass")
  require(methods)
  cl$new
}

someClass <- methods::setRefClass("someClass")
