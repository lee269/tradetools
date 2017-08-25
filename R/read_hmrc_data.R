#' Read an HMRC data file
#'
#' Uses the data specifications as detailed in
#' \url{https://www.uktradeinfo.com/Statistics/Pages/Supporting-material.aspx}
#' \tabular{ll}{
#' \strong{Type description} \tab \strong{Specification} \cr
#' control \tab SMKA12 \cr
#' exports \tab SMKE19 \cr
#' imports \tab SMKI19 \cr
#' arrivals/dispatches \tab SMKM46/SMKX46 \cr
#' arrest/dispest \tab SESM16/SESX16 estimates data
#'}
#'
#'
#' @param file An HMRC data file
#' @param datatype A data file type. One of "control", "exports",
#' "imports", "dispatches", "dispest", "arrivals", "arrest"
#'
#' @return A data frame of trade data
#'
#' @examples
#'
#' @export
#'
#' @examples
read_hmrc_data <- function(file, datatype){


# Alternatively, you can use a compact string representation where each
# character represents one column: c = character, i = integer, n = number, d =
# double, l = logical, D = date, T = date time, t = time, ? = guess, or _/- to
# skip the column.

# http://34.250.207.79/rstudio/help/library/readr/doc/column-types.html


# Control file spec SMKA12 ------------------------------------------
# https://www.uktradeinfo.com/Statistics/Documents/Tech_Spec_SMKA12.DOC

  control_colnames <-  c("comcode",
                         "intra_extra_ind",
                         "intra_mm_on",
                         "intra_yy_on",
                         "intra_mm_off",
                         "intra_yy_off",
                         "extra_mm_on",
                         "extra_yy_on",
                         "extra_mm_off",
                         "extra_yy_off",
                         "non_trade_id",
                         "sitc_no",
                         "sitc_ind",
                         "sitc_conv_a",
                         "sitc_conv_b",
                         "cn_q2",
                         "supp_arrivals",
                         "supp_dispatches",
                         "supp_imports",
                         "supp_exports",
                         "sub_group_arr",
                         "item_arr",
                         "sub_group_disp",
                         "item_disp",
                         "sub_group_imp",
                         "item_imp",
                         "sub_group_exp",
                         "item_exp",
                         "qty1_alpha",
                         "qty2_alpha",
                         "commodity_alpha"
                         )

  control_colposstart <- c(1, 11, 13, 16, 19, 22, 25, 28, 31, 34, 37, 39, 45, 47, 51, 55, 59, 62, 65, 68, 71, 73, 75, 77, 79, 81, 83, 85, 87, 91, 95)
  control_colposend <-   c(9, 11, 14, 17, 20, 23, 26, 29, 32, 35, 37, 43, 45, 49, 53, 57, 60, 63, 66, 69, 71, 73, 75, 77, 79, 81, 83, 85, 89, 93, 204)

  control_colspec <- readr::cols(comcode = "c",
                                 intra_extra_ind = "c",
                                 intra_mm_on = "c",
                                 intra_yy_on = "c",
                                 intra_mm_off = "c",
                                 intra_yy_off = "c",
                                 extra_mm_on = "c",
                                 extra_yy_on = "c",
                                 extra_mm_off = "c",
                                 extra_yy_off = "c",
                                 non_trade_id = "c",
                                 sitc_no = "c",
                                 sitc_ind = "c",
                                 sitc_conv_a = "c",
                                 sitc_conv_b = "c",
                                 cn_q2 = "c",
                                 supp_arrivals = "c",
                                 supp_dispatches = "c",
                                 supp_imports = "c",
                                 supp_exports = "c",
                                 sub_group_arr = "c",
                                 item_arr = "c",
                                 sub_group_disp = "c",
                                 item_disp = "c",
                                 sub_group_imp = "c",
                                 item_imp = "c",
                                 sub_group_exp = "c",
                                 item_exp = "c",
                                 qty1_alpha = "c",
                                 qty2_alpha = "c",
                                 commodity_alpha = "c"
                                 )



# Arrivals/Dispatches file spec SMKA46 -------------------------------------------
# https://www.uktradeinfo.com/Statistics/Documents/Tech_Spec_SMKA46.DOC

  arrdis_colnames <- c("comcode",
                           "record_type",
                           "cod_seq",
                           "cod_alpha",
                           "trade_ind",
                           "coo_seq",
                           "coo_alpha",
                           "nature_of_transaction",
                           "mode_of_transport",
                           "period_reference",
                           "suite_indicator",
                           "sitc",
                           "ip_comcode",
                           "no_of_consignments",
                           "stat_value",
                           "nett_mass",
                           "supp_unit"
                           )


  arrdis_colposstart <- c(1, 11, 13, 17, 20, 22, 26, 29, 33, 37, 45, 49, 55, 65, 78, 95, 110)
  arrdis_colposend <- c(9, 11, 15, 18, 20, 24, 27, 31, 35, 43, 47, 53, 63, 76, 93, 108, 123)

  arrdis_colspec <-  readr::cols(comcode = "c",
                                     record_type = "c",
                                     cod_seq = "c",
                                     cod_alpha = "c",
                                     trade_ind = "c",
                                     coo_seq = "c",
                                     coo_alpha = "c",
                                     nature_of_transaction = "c",
                                     mode_of_transport = "c",
                                     period_reference = "c",
                                     suite_indicator = "c",
                                     sitc = "c",
                                     ip_comcode = "c",
                                     no_of_consignments = "n",
                                     stat_value = "n",
                                     nett_mass = "n",
                                     supp_unit = "n"
                                     )


  # Arrivals/Dispatches estimates file spec --------------------------------------
  # https://www.uktradeinfo.com/Statistics/Documents/Tech_Spec_SESA16.DOC

  arrdisest_colnames <- c("sitc_2", "sitc_0", "month_ind", "estimated_value")

  arrdisest_colposstart <- c(1, 3, 4, 10)
  arrdisest_colposend <- c(2, 3, 9, 24)
  arrdisest_colspec <- readr::cols(sitc_2 = "c",
                                   sitc_0 = "c",
                                   month_ind = "c",
                                   estimated_value = "n")


# Import file spec SMKI19 --------------------------------------
# https://www.uktradeinfo.com/Statistics/Documents/Tech_Spec_SMKI19.DOC

  import_colnames <- c("comcode",
                         "sitc",
                         "record_type",
                         "cod_sequence",
                         "cod_alpha",
                         "coo_sequence",
                         "coo_alpha",
                         "account_mm",
                         "account_ccyy",
                         "port_sequence",
                         "port_alpha",
                         "flag_sequence",
                         "flag_alpha",
                         "country_sequence_coo_imp",
                         "country_alpha_coo_imp",
                         "trade_indicator",
                         "container",
                         "mode_of_transport",
                         "inland_mot",
                         "golo_sequence",
                         "golo_alpha",
                         "suite_indicator",
                         "procedure_code",
                         "cb_code",
                         "value",
                         "quantity_1",
                         "quantity_2"
                         )


  import_colposstart <- c(1, 11, 17, 21, 25, 28, 32, 35, 38, 43, 47, 51, 55, 58, 62, 65, 67, 71, 75, 78, 82, 86, 90, 94, 98, 115, 130)

  import_colposend <-   c(9, 15, 19, 23, 26, 30, 33, 36, 41, 45, 49, 53, 56, 60, 63, 65, 69, 73, 76, 80, 84, 88, 92, 96, 113, 128, 143)



  import_colspec <- readr::cols(comcode = "c",
                                sitc = "c",
                                record_type = "c",
                                cod_sequence = "c",
                                cod_alpha = "c",
                                coo_sequence = "c",
                                coo_alpha = "c",
                                account_mm = "c",
                                account_ccyy = "c",
                                port_sequence = "c",
                                port_alpha = "c",
                                flag_sequence = "c",
                                flag_alpha = "c",
                                country_sequence_coo_imp = "c",
                                country_alpha_coo_imp = "c",
                                trade_indicator = "c",
                                container = "c",
                                mode_of_transport = "c",
                                inland_mot = "c",
                                golo_sequence = "c",
                                golo_alpha = "c",
                                suite_indicator = "c",
                                procedure_code = "c",
                                cb_code = "c",
                                value = "n",
                                quantity_1 = "n",
                                quantity_2 = "n"
                                )


# Export file spec SMKE19 --------------------------------------
# https://www.uktradeinfo.com/Statistics/Documents/Tech_Spec_SMKE19.DOC

  export_colnames <- c("comcode",
                       "sitc",
                       "record_type",
                       "cod_seq",
                       "cod_alpha",
                       "account_mm",
                       "account_ccyy",
                       "port_seq",
                       "port_alpha",
                       "flag_seq",
                       "flag_alpha",
                       "trade_ind",
                       "container",
                       "mode_of_transport",
                       "inland_mot",
                       "golo_seq",
                       "golo_alpha",
                       "suite_indicator",
                       "procedure_code",
                       "value",
                       "quantity_1",
                       "quantitiy_2",
                       "industrial_plant_comcode"
                       )

  export_colposstart <- c(1, 11, 17, 21, 25, 28, 31, 36, 40, 44, 48, 51, 53, 57, 61, 64, 68, 72, 76, 80, 97, 112, 127)

  export_colposend <-   c(9, 15, 19, 23, 26, 29, 34, 38, 42, 46, 49, 51, 55, 59, 62, 66, 70, 74, 78, 95, 110, 125, 141)

  export_colspec <- readr::cols(comcode = "c",
                                sitc = "c",
                                record_type = "c",
                                cod_seq = "c",
                                cod_alpha = "c",
                                account_mm = "c",
                                account_ccyy = "c",
                                port_seq = "c",
                                port_alpha = "c",
                                flag_seq = "c",
                                flag_alpha = "c",
                                trade_ind = "c",
                                container = "c",
                                mode_of_transport = "c",
                                inland_mot = "c",
                                golo_seq = "c",
                                golo_alpha = "c",
                                suite_indicator = "c",
                                procedure_code = "c",
                                value = "n",
                                quantity_1 = "n",
                                quantitiy_2 = "n",
                                industrial_plant_comcode = "c")




# Switch for file spec to use-------------------------------------------

  output_colnames <- switch(datatype,
                            "control" = control_colnames,
                            "exports" = export_colnames,
                            "imports" = import_colnames,
                            "dispatches" = arrdis_colnames,
                            "arrivals" = arrdis_colnames,
                            "dispest" = arrdisest_colnames,
                            "arrest" = arrdisest_colnames)

  output_colposstart <- switch(datatype,
                               "control" = control_colposstart,
                               "exports" = export_colposstart,
                               "imports" = import_colposstart,
                               "dispatches" = arrdis_colposstart,
                               "arrivals" = arrdis_colposstart,
                               "dispest" = arrdisest_colposstart,
                               "arrest" = arrdisest_colposstart)

  output_colposend <- switch(datatype,
                               "control" = control_colposend,
                               "exports" = export_colposend,
                               "imports" = import_colposend,
                               "dispatches" = arrdis_colposend,
                               "arrivals" = arrdis_colposend,
                               "dispest" = arrdisest_colposend,
                               "arrest" = arrdisest_colposend)

  output_colspec <- switch(datatype,
                           "control" = control_colspec,
                           "exports" = export_colspec,
                           "imports" = import_colspec,
                           "dispatches" = arrdis_colspec,
                           "arrivals" = arrdis_colspec,
                           "dispest" = arrdisest_colspec,
                           "arrest" = arrdisest_colspec)



# Read in file ----------------------------------------------------

  x <- readr::read_fwf(file,
                       readr::fwf_positions(output_colposstart, output_colposend, output_colnames),
                       col_types = output_colspec,
                       skip = 1,
                       n_max = length(readr::read_lines(file)) - 2
                       )

  return(x)


}
