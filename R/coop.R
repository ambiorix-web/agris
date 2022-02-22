#' Cross Origin Opener Policy
#' 
#' Sets the `Cross-Origin-Opener-Policy` to
#' `same-origin` (default).
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_cross_origin_opener_policy <- function(
  policy = c(
    "same-origin",
    "same-origin-allow-popups",
    "unsafe-nonce"
  )
) {
  policy <- match.arg(policy)

  \(req, res) {
    res$header(
      "Cross-Origin-Opener-Policy",
      policy
    )
  }
}