#' Cross Origin Embedder Policy
#' 
#' Sets the `Cross-Origin-Embedder-Policy` to `require-corp` (default),
#' so the document can only load resources from the same origin,
#' or resources explicitly marked as loadable from another origin.
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_cross_origin_embedder_policy <- function(
  policy = c(
    "require-corp",
    "unsafe-none"
  )
) {
  policy <- match.arg(policy)

  \(req, res) {
    req$header(
      "Cross-Origin-Embedder-Policy",
      policy
    )
  }
}
