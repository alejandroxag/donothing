
<!-- README.md is generated from README.Rmd. Please edit that file -->

# donothing

<!-- badges: start -->

![](https://img.shields.io/badge/does-nothing-blue.svg) ![License:
MIT](https://img.shields.io/badge/license-MIT-green.svg)
![](https://img.shields.io/badge/last%20change-October%2020,%202020-yellowgreen.svg)
<!-- badges: end -->

The aim of this is saving the annoyance of commenting a pipe `%>%`.

## Installation

You can install the development version from
[GitHub](https://github.com/alejandroxag) with:

``` r
# install.packages("devtools")
devtools::install_github("alejandroxag/donothing")
#> 
#>          checking for file 'C:\Users\aleja\AppData\Local\Temp\RtmpEpvpiN\remotes533c31514d60\alejandroxag-donothing-804fbc1/DESCRIPTION' ...  v  checking for file 'C:\Users\aleja\AppData\Local\Temp\RtmpEpvpiN\remotes533c31514d60\alejandroxag-donothing-804fbc1/DESCRIPTION'
#>       -  preparing 'donothing':
#>    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
#>       -  checking for LF line-endings in source and make files and shell scripts
#>   -  checking for empty or unneeded directories
#>       -  building 'donothing_0.0.0.9000.tar.gz'
#>      
#> 
library(donothing)
```

## Example

When working with a series of instructions piped down together, it’s
straightforward to comment any of them, except the last one, since the
previous pipe is left pointing nowhere. `donothing()` is intended to be
that last line that won’t be commented.

Easier to do this

``` r
t <- tibble::tibble(x = 1:2) %>% 
    dplyr::mutate(y = letters[1:2]) %>%
    # dplyr::mutate(y = LETTERS[1:7]) %>%
    donothing::donothing()
t
#> # A tibble: 2 x 2
#>       x y    
#>   <int> <chr>
#> 1     1 a    
#> 2     2 b
```

rather than this

``` r
t <- tibble::tibble(x = 1:2) %>% 
    dplyr::mutate(y = letters[1:2]) #%>% 
    # dplyr::mutate(y = letters[1:7])
t
#> # A tibble: 2 x 2
#>       x y    
#>   <int> <chr>
#> 1     1 a    
#> 2     2 b
```
