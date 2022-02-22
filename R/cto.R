#' Content Type Options
#' 
#' Sets the `X-Content-Type-Options` to `nosniff` (default).
#' 
#' @param value Value to set.
#' 
#' @export 
use_content_type_options <- function(
  value = "nosniff"
) {
  \(req, res) {
    res$header(
      "X-Content-Type-Options",
      value
    )
  }
}
