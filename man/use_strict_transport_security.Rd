% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sts.R
\name{use_strict_transport_security}
\alias{use_strict_transport_security}
\title{Strict Transport Security}
\usage{
use_strict_transport_security(
  max_age = 15552000,
  include_subdomains = FALSE,
  preload = FALSE
)
}
\arguments{
\item{max_age}{The time, in seconds, that the browser should
remember that a site is only to be accessed using HTTPS.
Defaults to 6 months.}

\item{include_subdomains}{Whether to apply this rule applies
to all of the site's subdomains as well.}

\item{preload}{Not part of specs, see
\href{https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security#preloading_strict_transport_security}{MDN}}
}
\description{
Sets the \code{Strict-Transport-Security} header,
which nforms browsers that the site should only be
accessed using HTTPS, and that any future attempts
to access it using HTTP should automatically be
converted to HTTPS.
}
