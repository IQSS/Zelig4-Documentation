#' Parse an Object into a the ``boot'' Class
#'
#' ...
#' @param obj an object
#' @param ... parameters supported
#' @return an object of class ``boot''
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
parseBoot <- function (obj, ...) {
  UseMethod("parseBoot")
}

#' Parse an Unspecified Object into the ``boot'' Class
#'
#' This method attempts to find a reasonable default behavior for parsing an
#' unsupported object into a boot object.
#' @param obj an object
#' @param ... ignored parameters
#' @return a ``boot'' object
#' @author
parseBoot.default <- function (obj, ...) {
  warning()
}

#' Parse a List-type Object into a ``boot'' Class Object
#'
#' Returns a list as a boot object. This primarily changes the class, and adds
#' a few attributes.
#' @param obj a list with several attributes
#' @param ... 
#' @return a ``boot'' object
#' @author Matt Owen \email{mowen@@iq.harvard.edu}
parseBoot.list <- function (obj, ...) {

  result <- list()


  # Cast
  class(result) <- "boot"

  # Return
  result
}
