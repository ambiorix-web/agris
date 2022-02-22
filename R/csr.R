#' Use Content Security Policy
#' 
#' Adds relevant Content-Security-Policy headers.
#' 
#' @section Directives:
#' 
#' - base-uri 'self';
#' - block-all-mixed-content;
#' - font-src 'self' https: data:;
#' - form-action 'self';
#' - frame-ancestors 'self';
#' - img-src 'self' data:;
#' - object-src 'none';
#' - style-src 'self' https: 'unsafe-inline';
#' - upgrade-insecure-requests
#' 
#' @export 
use_content_security_policy <- function() {
  \(req, res) {
    res$header(
      "Content-Security-Policy",
      default_csr()
    )
  }
}

default_csr <- function() {
  paste(
    "base-uri 'self'",
    "block-all-mixed-content",
    "font-src 'self' https: data:",
    "form-action 'self'",
    "frame-ancestors 'self'",
    "img-src 'self' data:",
    "object-src 'none'",
    "style-src 'self' https: 'unsafe-inline'",
    "upgrade-insecure-requests",
    sep = "; "
  )
}
