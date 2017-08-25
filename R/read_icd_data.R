#' Read Inland Clearance Depot data
#'
#' Downloads information on Inland Clearance Depots and
#' Freezones from the \url{www.uktradeinfo.com} website.
#'
#' @return A data frame of Inland Clearance Depot data
#'
#' @examples
#'
#' @importFrom magrittr "%>%"
#' @export
read_icd_data <- function(){

  url <- "https://www.uktradeinfo.com/CodesAndGuides/Documents/Location_codes.xls"

  temp <- tempfile(fileext = ".xls")
  utils::download.file(url, destfile = temp, mode = "wb")
  outfile <- readxl::read_excel(temp, sheet = 1, skip = 3, col_names = TRUE)

  colnames(outfile) <- c("name", "seq", "alpha")

  outfile <- outfile %>%
    dplyr::mutate(seq = as.numeric(seq)) %>%
    dplyr::filter(!(is.na(name) & is.na(seq) & is.na(alpha))) %>%
    dplyr::select(seq, alpha, name) %>%
    dplyr::arrange(seq)

  return(outfile)



}
