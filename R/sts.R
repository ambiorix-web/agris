#' Strict Transport Security
#' 
#' Sets the `Strict-Transport-Security` header,
#' which nforms browsers that the site should only be 
#' accessed using HTTPS, and that any future attempts 
#' to access it using HTTP should automatically be 
#' converted to HTTPS.
#' 
#' @param max_age The time, in seconds, that the browser should 
#' remember that a site is only to be accessed using HTTPS.
#' Defaults to 6 months.
#' @param include_subdomains Whether to apply this rule applies 
#' to all of the site's subdomains as well.
#' @param preload Not part of specs, see 
#' [MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security#preloading_strict_transport_security)
#' 
#' @export 
use_strict_transport_security <- function(
  max_age = 15552000,
  include_subdomains = FALSE,
  preload = FALSE
) {
  value <- sprintf("max-age=%s", max_age)

  if(include_subdomains)
    value <- sprintf("%s; includeSubDomains", value)

  if(preload)
    value <- sprintf("%s; preload", value)

  \(req, res) {
    res$header(
      "Strict-Transport-Security",
      value
    )
  }
}