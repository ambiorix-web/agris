#' Cross Origin Embedder Policy
#' 
#' Sets the `Cross-Origin-Embedder-Policy` to `require-corp`,
#' so the document can only load resources from the same origin,
#' or resources explicitly marked as loadable from another origin.
#' 
#' @export 
use_cross_origin_embedder_policy <- function() {
  \(req, res) {
    req$header(
      "Cross-Origin-Embedder-Policy",
      "require-corp"
    )
  }
}
