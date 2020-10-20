#' Do Nothing
#'
#' That's that.
#'
#' @param arg
#' Anything.
#'
#' @return
#' arg
#'
#' @export
#'
#' @examples
#' tibble::tibble(x = 1:3) %>%
#' dplyr::mutate(y = letters[1:3]) %>%
#' # dplyr::mutate(y = LETTERS[1:3]) %>%
#' donothing()
#'
#' tibble::tibble(x = 1:3) %>%
#' # dplyr::mutate(y = letters[1:3]) %>%
#' dplyr::mutate(y = LETTERS[1:3]) %>%
#' donothing()
donothing <- function(arg) return(arg)
