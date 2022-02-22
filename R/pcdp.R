#' Permitted Cross Domain Policies
#' 
#' Sets the `X-Permitted-Cross-Domain-Policies` header to `none`.
#' Tells some clients (mostly Adobe products) your domain's policy
#' for loading cross-domain content.
#' 
#' @param policy Policy to set.
#' 
#' @export
use_permitted_cross_domain_policies <- function(
  policy = c(
    "none",
    "master-only",
    "by-content-type",
    "all"
  )
) {
  policy <- match.arg(policy)

  \(req, res) {
    res$header(
      "X-Permitted-Cross-Domain-Policies",
      policy
    )
  }
}
