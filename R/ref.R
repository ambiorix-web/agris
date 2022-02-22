#' Referrer Policy
#' 
#' Sets the `Referrer-Policy` header to `no-referrer` (default).
#' Controls how much referrer information (sent with the Referer header)
#' should be included with requests.
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_referrer_policy <- function(
  policy = c(
    "no-referrer",
    "no-referrer-when-downgrade",
    "origin",
    "origin-when-cross-origin",
    "same-origin",
    "strict-origin",
    "strict-origin-when-cross-origin",
    "unsafe-url"
  )
) {
  policy <- match.arg(policy)

  \(req, res) {
    res$header(
      "Referrer-Policy",
      policy
    )
  }
}
