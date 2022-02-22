#' Use Content Security Policy
#' 
#' Adds relevant Content Security Policy headers.
#' 
#' @section Changes:
#' 
#' - Adds [nonce](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/nonce)
#' to make each request unique.
#' 
#' @export 
use_content_security_policy <- function() {
  \(req, res) {
    nonce <- random_bytes()
    policy <- sprintf(
      "script-src 'nonce-%s'",
      nonce
    )
    res$set("nonce", nonce)
    res$header(
      "Content-Security-Policy", nonce
    )
    res$pre_render_hook(none_pre_hook)
  }
}

#' @keywords internal
#' @importFrom ambiorix pre_hook
none_pre_hook <- function(self, content, data, ext) {
  if(ext != "html")
    return(pre_hook(content, data))

  replacement <- sprintf(
    "<script nonce='%s'",
    self$get("nonce")
  )
  content <- gsub("<script", replacement, content)
  pre_hook(content, data)
}

#' Random Bytes
#' 
#' Create a nonce.
#' 
#' @param n Number of bytes.
#' 
#' @keywords internal
random_bytes <- function(n = 16L) {
  paste(
    as.hexmode(
      sample(
        256,
        n,
        replace = TRUE
      )
    ),
    collapse = ""
  )
}
