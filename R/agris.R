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
#' - [use_content_type_options()]
#' - [use_xss_protection()]
#' - [use_download_options()]
#' - [use_strict_transport_security()]
#' - [use_origin_agent_cluster()]
#' - [use_permitted_cross_domain_policies()]
#' 
#' @export 
agris <- function() {
  list(
    use_content_security_policy(),
    use_cross_origin_embedder_policy(),
    use_cross_origin_opener_policy(),
    use_cross_origin_resource_policy(),
    use_dns_prefetch_control(),
    use_frame_options(),
    use_hide_powered_by(),
    use_content_type_options(),
    use_xss_protection(),
    use_download_options(),
    use_strict_transport_security(),
    use_origin_agent_cluster(),
    use_permitted_cross_domain_policies()
  )
}
