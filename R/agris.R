#' Agris Middlewares
#' 
#' Uses all agris middlewares.
#' 
#' @section Middlewares:
#' - [use_content_security_policy()]
#' - [use_cross_origin_embedder_policy()]
#' - [use_cross_origin_opener_policy()]
#' - [use_cross_origin_resource_policy()]
#' - [use_dns_prefetch_control()]
#' - [use_frame_options()]
#' - [use_hide_powered_by()]
#' 
#' @export 
use_agris <- function() {
  use_content_security_policy()
  use_cross_origin_embedder_policy()
  use_cross_origin_opener_policy()
  use_cross_origin_resource_policy()
  use_dns_prefetch_control()
  use_frame_options()
  use_hide_powered_by()
}
