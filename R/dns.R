#' DNS Prefetch Control
#' 
#' Sets the `X-DNS-Prefetch-Control` header to `on` (default).
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_dns_prefetch_control <- function(
  policy = c(
    "on",
    "off"
  )
) {
  policy <- match.arg(policy)

  \(req, res) {
    req$header(
      "X-DNS-Prefetch-Control",
      policy
    )
  }
}
