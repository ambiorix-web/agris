<!-- badges: start -->
<!-- badges: end -->

# agris

Security middlewares for [ambiorix](https://ambiorix.dev).

## Installation

You can install the development version of agris from
[GitHub](https://github.com/devOpifex/agris) with:

``` r
# install.packages("devtools")
devtools::install_github("devOpifex/agris")
```

## Example

See examples directory on Github.

``` r
library(agris)
library(ambiorix)

app <- Ambiorix$new()

app$use(use_agris())

app$get("/", \(req, res){
  res$send("Using {ambiorix}!")
})

app$start()
```

