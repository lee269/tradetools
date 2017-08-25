#' Read seaport reference data
#'
#' Downloads country information data from
#' the \url{www.uktradeinfo.com} website.
#'
#' @return A data frame of seaport data
#'
#' @examples
#'
#' @importFrom magrittr "%>%"
#' @export
read_seaport_data <- function(){
  url <- "https://www.uktradeinfo.com/CodesAndGuides/Documents/Port_codes.xls"

  temp <- tempfile(fileext = ".xls")
  utils::download.file(url, destfile = temp, mode = "wb")
  outfile <- readxl::read_excel(temp, sheet = 3, col_names = TRUE)

  colnames(outfile) <- c("seaport", "alpha", "seq", "seaport_location", "comments")

  outfile <- outfile %>%
    dplyr::select(seq, alpha, seaport, seaport_location, comments) %>%
    dplyr::arrange(seq)

  return(outfile)

}
