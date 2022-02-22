#' Cross Origin Resource Policy
#' 
#' Sets the `Cross-Origin-Resource-Policy` to `same-origin` (default).
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_cross_origin_resource_policy <- function(
  policy = c(
    "same-origin",
    "same-site",
    "cross-origin"
  )
) {
  policy <- match.arg(policy)

  \(req, res) {
    res$header(
      "Cross-Origin-Resource-Policy",
      policy
    )
  }
}
