#' Download and extract files from a URL zipfile
#'
#' \code{get_zip_file} downloads a zipfile from a specific URL and extracts all
#' of its contents into a specified folder.
#'
#'
#'
#' @param url Address of zipfile
#' @param extractdir Folder to unzip to
#'
#' @return The contents of the zipfile are extracted into \code{extractdir}
#'
#' @examples
#' zipfile <- "https://www.uktradeinfo.com/Statistics/Documents/exporters_2016archive_JulDec.zip"
#' dir <- "~/temp"
#' get_zip_file(zipfile, dir)
#'
#' \dontrun{
#' get_zip_file("myfile.zip")
#' }
#' @export
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

#' Tidy up HMRC data files
#'
#' Unzips all zipfiles in a folder and removes the zipfiles. Tidies up
#' the filenames of the downloads.
#'
#' All files are set to lower case. HMRC trader details files have
#' ..txt suffixes changed to .tsv. Inconsistent filenames in
#' February 2009 and May/June 2014 data are fixed.
#'
#' @param extractdir folder containing exporter files
#'
#' @return The contents of \code{extractdir} are renamed as appropriate.
#' Any .zip files in the folder are deleted.
#'
#' @examples
#' unzip_and_cleanup("~/temp")
#'
#'
#' @export
unzip_and_cleanup <- function(extractdir) {

  # Clean up: delete the zipfiles
  zipfiles <- list.files(extractdir, pattern = ".zip", full.names = TRUE)

  # need to deal with cases where there are no zips in extractdir
  if (length(zipfiles) > 0) {
    sapply(zipfiles, utils::unzip, exdir = extractdir)
    sapply(zipfiles, unlink)
  }

  # Remove .txt suffix from trader files
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(txt) {
    file.rename(from = txt, to = sub(pattern = "\\.\\.txt", replacement = "\\.txt", txt))
  })

  # Rename trader txt files to to tsv
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(txt) {
    file.rename(from = txt, to = sub(pattern = "\\.txt", replacement = "\\.tsv", txt))
  })

  # Make all files lower case
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(filename) {
    file.rename(from = filename, to = tolower(filename))
  })

  # Fix ~1 for Feb 2009
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(txt) {
    file.rename(from = txt, to = sub(pattern = "~1", replacement = "0902", txt))
  })

  # Fix V2 in May/June 2014
  datafiles <- list.files(extractdir, full.names = TRUE)
  sapply(datafiles, FUN = function(txt) {
    file.rename(from = txt, to = sub(pattern = "V2", replacement = "", txt))
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
#' @return A vector of strings with punctuation and spaces removed, and replaced
#'   with underscores
#'
#' @examples
#' x <- c("Isabella", "Andrew", "Graham", "Leigh")
#' y <- c(10, 25, 19, 36)
#' df <- data.frame( "First Name" = x, "High score! in 2018" = y)
#' colnames(df) <- safe_names(colnames(df))
#' @export
safe_names = function(names) {

  names = gsub('[^a-z0-9]+','_',tolower(names))
  names = make.names(names, unique = TRUE, allow_ = TRUE)
  names = gsub('.','_',names, fixed = TRUE)
  names

}
