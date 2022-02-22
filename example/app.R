devtools::load_all()
library(ambiorix)

setwd("./example")
here::i_am(".here")

app <- Ambiorix$new()

app$use(
  list(
    use_content_security_policy(),
    use_cross_origin_embedder_policy(),
    use_cross_origin_opener_policy(),
    use_cross_origin_resource_policy(),
    use_dns_prefetch_control(),
    use_frame_options(),
    use_hide_powered_by(),
    use_content_type_options(),
    use_referrer_policy()
  )
)

app$static(here::here("assets"), "assets")

app$get("/", \(req, res){
  res$render(
    "template",
    data = list(
      string = "Hello world!"
    )
  )
})

app$start()
