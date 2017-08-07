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
#' @return The contents of the zipfile are extracted into \code{extractdir}
#' @export
#'
#' @examples
get_zip_file <- function(url, extractdir) {

  # add code to screen urls which are not .zips
  if (stringr::str_sub(url, -3, -1) != "zip") {
    stop("URL is not a zip file")
  }
  # library(utils)
  temp <- tempfile()
  utils::download.file(url, destfile = temp, mode = "wb")
  utils::unzip(temp, exdir = extractdir)

}

#' Tidy up HMRC exporter files
#'
#' Unzips all zipfiles in a folder and removes the zipfiles. Tidies the
#' filenames of HMRC exporter details by changing ..txt suffixes to .tsv
#'
#' @param extractdir folder containing exporter files
#'
#' @return
#' @export
#'
#' @examples
unzip_and_cleanup <- function(extractdir) {

  # Clean up: delete the zipfiles
  zipfiles <- list.files(extractdir, pattern = ".zip", full.names = TRUE)

  # need to deal with cases where there are no zips in extractdir
  if (length(zipfiles) > 0) {
    sapply(zipfiles, utils::unzip, exdir = extractdir)
    sapply(zipfiles, unlink)
  }

  # Remove .txt suffix
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(txt) {
    file.rename(from = txt, to = sub(pattern = "\\.\\.txt", replacement = "\\.txt", txt))
  })

  # Rename to tsv
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(txt) {
    file.rename(from = txt, to = sub(pattern = "\\.txt", replacement = "\\.tsv", txt))
  })

}




#' Sanitize table field names
#'
#' Removes odd characters from field names and makes them lower case. Converts
#' periods to underscores. Makes table field names safe to use in PostgreSQL
#' databases.
#'
#' @param names A vector of strings
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
