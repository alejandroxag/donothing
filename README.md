
<!-- README.md is generated from README.Rmd. Please edit that file -->

# donothing

<!-- badges: start -->

<!-- badges: end -->

The aim of this is to saving the annoyance of commenting a pipe `%>%`.

## Installation

You can install the development version from
[GitHub](https://github.com/alejandroxag) with:

``` r
# install.packages("devtools")
library(donothing)
devtools::install_github("alejandroxag/donothing")
```

## Example

When working with a series of instructions piped down together, it’s
really easy to comment any of them except the last, since the previous
pipe is left pointing nowhere. `donothing()` is intended to be that last
line that won’t be commented.

``` r
tibble::tibble(x = 1:7) %>% 
    dplyr::mutate(y = letters[1:7]) %>% 
    # dplyr::mutate(y = LETTERS[1:7]) %>% 
    donothing::donothing()

tibble::tibble(x = 1:7) %>% 
    dplyr::mutate(y = letters[1:7]) %>% 
    # dplyr::mutate(y = LETTERS[1:7]) %>% 
    donothing::donothing()
```
