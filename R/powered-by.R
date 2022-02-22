#' Powered By
#' 
#' Hides the `X-Powered-By` header.
#' Someone may want to exploit vulnerabilities of R or ambiorix,
#' hiding this provides less information to those people.
#' 
#' @param value Value to set the header to.
#' 
#' @export 
use_hide_powered_by <- function(
  value = NULL
) {
  \(req, res) {
    req$header(
      "X-Powered-By",
      value
    )
  }
}