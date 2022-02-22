#' Origin Agent Cluster
#' 
#' Sets the `Origin-Agent-Cluster` to `true`.
#' Mechanism to allow web applications to isolate their origins.
#' 
#' @param value Value to set.
#' 
#' @export
use_origin_agent_cluster <- function(
  value = "?1"
) {
  \(req, res) {
    res$header(
      "Origin-Agent-Cluster",
      value
    )
  }
}