#' Download Options
#' 
#' Sets to the `X-Download-Options` header to `noopen`,
#' this is IE specific.
#' 
#' @export 
use_download_options <- function(){
  \(req, res) {
    res$header(
      "X-Download-Options",
      "noopen"
    )
  }
}
