#' All Agris Middlewares
#' 
#' @section Middlewares:
#' - [use_content_security_policy()]
#' - [use_cross_origin_embedder_policy()]
#' - [use_cross_origin_opener_policy()]
#' 
#' @export 
use_agris <- function() {
  use_content_security_policy()
  use_cross_origin_embedder_policy()
  use_cross_origin_opener_policy()
}
