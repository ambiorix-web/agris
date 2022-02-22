#' XSS Protection
#' 
#' Sets the `X-XSS-Protection` header to `1; mode=block` to 
#' enable XSS filtering and rather than sanitizing the page, 
#' the browser will prevent rendering of the page if an attack is detected.
#' 
#' @param policy Policy to set.
#' 
#' @export 
use_xss_protection <- function(
  policy = "1; mode=block"
) {
  \(req, res) {
    res$header(
      "X-XSS-Protection",
      policy
    )
  }
}
