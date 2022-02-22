#' Cross Origin Opener Policy
#' 
#' Sets the `Cross-Origin-Opener-Policy` to
#' `same-origin-allow-popups`.
#' 
#' @export 
use_cross_origin_opener_policy <- function() {
  \(req, res) {
    req$header(
      "Cross-Origin-Opener-Policy",
      "same-origin-allow-popups"
    )
  }
}