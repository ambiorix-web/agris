devtools::load_all()
library(ambiorix)

setwd("./example")
here::i_am(".here")

app <- Ambiorix$new()

app$use(use_nonce())

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
