#' Read airport reference data
#'
#' Downloads the country information data from
#' the \url{www.uktradeinfo.com} website.
#'
#' @return A data frame of airport data
#'
#' @examples
#'
#' @importFrom magrittr "%>%"
#' @export
read_airport_data <- function(){
  url <- "https://www.uktradeinfo.com/CodesAndGuides/Documents/Port_codes.xls"

  temp <- tempfile(fileext = ".xls")
  utils::download.file(url, destfile = temp, mode = "wb")
  outfile <- readxl::read_excel(temp, sheet = 2, col_names = TRUE)

  colnames(outfile) <- c("airport", "alpha", "seq", "airport_type", "comments")

  outfile <- outfile %>%
             dplyr::select(seq, alpha, airport, airport_type, comments) %>%
             dplyr::arrange(seq)

  return(outfile)

}
