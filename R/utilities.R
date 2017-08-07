#' Download and extract files from a URL zipfile
#'
#' Downloads a zipfile from a specific URL and extracts all of its contents into
#' a specified folder
#'
#'
#'
#' @param url Address of zipfile
#' @param extractdir Folder to unzip to
#'
#' @return
#' @export
#'
#' @examples
get_zip_file <- function(url, extractdir) {

  # library(utils)
  temp <- tempfile()
  utils::download.file(url, destfile = temp, mode = "wb")
  utils::unzip(temp, exdir = extractdir)

}



#' Sanitize table field names
#'
#' Removes odd characters from field names and makes them lower case. Converts
#' periods to underscores. Makes table field names safe to use in PostgreSQL
#' databases.
#'
#' @param names
#'
#' @return
#' @export
#'
#' @examples
safe_names = function(names) {

  names = gsub('[^a-z0-9]+','_',tolower(names))
  names = make.names(names, unique = TRUE, allow_ = TRUE)
  names = gsub('.','_',names, fixed = TRUE)
  names

}
