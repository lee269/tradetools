#' Read an HMRC traders file
#'
#' Converts a standard HMRC exporter or importer file to long form for further
#' processing or analysis.
#'
#' @param file An HMRC tab delimited traders file
#'
#' @return A data frame of trader data in long form
#'
#' @examples
#' test
#' data <- read_hmrc_traders("traderfile.tsv")
#' head(data)
#'
#' @importFrom magrittr "%>%"
#' @export
read_hmrc_traders <- function(file) {

  # library(readr)
  # library(dplyr)
  # library(tidyr)
  # library(stringr)

  # column names
  cn <- c("period",
          "nolines",
          "companyname",
          paste("address", seq(1:5), sep = ""),
          "postcode",
          paste("comcode", seq(1:50), sep = ""))

  #column specification to force comcodes to be characters not integers
  colspec <- readr::cols(period = "i",
                          nolines = "i",
                          address1 = "c",
                          address2 = "c",
                          address3 = "c",
                          address4 = "c",
                          address5 = "c",
                          postcode = "c",
                          comcode1 = "c", comcode2 = "c", comcode3 = "c", comcode4 = "c", comcode5 = "c",
                          comcode6 = "c", comcode7 = "c", comcode8 = "c", comcode9 = "c", comcode10 = "c",
                          comcode11 = "c", comcode12 = "c", comcode13 = "c", comcode14 = "c", comcode15 = "c",
                          comcode16 = "c", comcode17 = "c", comcode18 = "c", comcode19 = "c", comcode20 = "c",
                          comcode21 = "c", comcode22 = "c", comcode23 = "c", comcode24 = "c", comcode25 = "c",
                          comcode26 = "c", comcode27 = "c", comcode28 = "c", comcode29 = "c", comcode30 = "c",
                          comcode31 = "c", comcode32 = "c", comcode33 = "c", comcode34 = "c", comcode35 = "c",
                          comcode36 = "c", comcode37 = "c", comcode38 = "c", comcode39 = "c", comcode40 = "c",
                          comcode41 = "c", comcode42 = "c", comcode43 = "c", comcode44 = "c", comcode45 = "c",
                          comcode46 = "c", comcode47 = "c", comcode48 = "c", comcode49 = "c", comcode50 = "c"
                          )

  # read tsv file
  x <- readr::read_delim(file, delim = "\t", col_names = cn, col_types = colspec)

  # convert to long form
  # create year and month field, and pad out comcodes to 8 digits
  y <- x %>%
    tidyr::gather(codenum, comcode, comcode1:comcode50, na.rm = TRUE) %>%
    dplyr::mutate(year = as.numeric(stringr::str_sub(period, 1, 4))) %>%
    dplyr::mutate(month = as.numeric(stringr::str_sub(period, -2, -1))) %>%
    dplyr::mutate(comcode = stringr::str_pad(comcode, width = 8, side = "left", pad = "0")) %>%
    dplyr::select(year, month, period:comcode)

  y <- as.data.frame(y)

  # if (convertcsv == TRUE) {
  #   write_csv(y, path = sub(pattern = "\\.tsv", replacement = "\\.csv", file), col_names = TRUE)
  # }

  return(y)

}
