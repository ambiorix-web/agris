#' Cross Origin Resource Policy
#' 
#' Sets the `Cross-Origin-Resource-Policy` to `same-origin`.
#' 
#' @export 
use_cross_origin_resource_policy <- function() {
  \(req, res) {
    req$headers(
      "Cross-Origin-Resource-Policy",
      "same-origin"
    )
  }
}