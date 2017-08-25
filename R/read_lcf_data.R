#' Read Local Clearance Freight locations data
#'
#' Downloads information on NES Local Local Clearance Freight locations from the
#' \url{www.uktradeinfo.com} website.
#'
#' @return A data frame of Inland Clearance Depot data
#'
#' @examples
#'
#' @importFrom magrittr "%>%"
#' @export
read_lcf_data <- function(){

  url <- "https://www.uktradeinfo.com/CodesAndGuides/Documents/Location_codes.xls"

  temp <- tempfile(fileext = ".xls")
  utils::download.file(url, destfile = temp, mode = "wb")
  outfile <- readxl::read_excel(temp, sheet = 2, skip = 3, col_names = TRUE)

  colnames(outfile) <- c("name", "seq", "alpha")

  outfile <- outfile %>%
    dplyr::filter(!(is.na(name) & is.na(seq) & is.na(alpha))) %>%
    dplyr::select(seq, alpha, name) %>%
    dplyr::arrange(seq)

  return(outfile)

}
