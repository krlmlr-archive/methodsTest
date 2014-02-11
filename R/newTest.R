#' newTest
#' 
#' Tests the new() function
#' 
#' @export
#' @importFrom methods setRefClass
newTest <- function() {
  cl <- get("someClass")
  cl$new
}

someClass <- setRefClass("someClass")
