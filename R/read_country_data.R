#' Read country reference data
#'
#' Downloads the country information data from
#' the \url{www.uktradeinfo.com} website.
#'
#' @return A data frame of country data
#'
#' @examples
#'
#'
#' @importFrom magrittr "%>%"
#' @export
read_country_data <- function(){
  url <- "https://www.uktradeinfo.com/CodesAndGuides/Documents/Country_alpha.xls"

  temp <- tempfile(fileext = ".xls")
  utils::download.file(url, destfile = temp, mode = "wb")
  outfile <- readxl::read_excel(temp, col_names = TRUE)

  colnames(outfile) <- c("country", "co_alpha", "co_seq", "comments")

  outfile <- outfile %>%
            dplyr::select(co_seq, co_alpha, country, comments) %>%
            dplyr::arrange(co_seq)

  return(outfile)
}
