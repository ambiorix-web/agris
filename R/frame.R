#' Frame Options
#' 
#' Sets `X-Frame-Options` header to `DENY` (default).
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_frame_options <- function(
  policy = c(
    "DENY",
    "SAMEORIGIN"
  )
) {
  policy <- policy[1]

  \(req, res) {
    res$header(
      "X-Frame-Options",
      policy
    )
  }
}