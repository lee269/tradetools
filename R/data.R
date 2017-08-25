#' Non-EU exports data
#'
#' A dataset containing a ramdom sample of 100 records from an HMRC export
#' download file (SMKE19).
#'
#' @format A data frame with 100 rows and 23 variables:
#' \describe{
#'   \item{comcode}{character}
#'   \item{sitc}{character}
#'   \item{record_type}{character}
#'   \item{cod_seq}{character}
#'   \item{cod_alpha}{character}
#'   \item{account_mm}{character}
#'   \item{account_ccyy}{character}
#'   \item{port_seq}{character}
#'   \item{port_alpha}{character}
#'   \item{flag_seq}{character}
#'   \item{flag_alpha}{character}
#'   \item{trade_ind}{character}
#'   \item{container}{character}
#'   \item{mode_of_transport}{character}
#'   \item{inland_mot}{character}
#'   \item{golo_seq}{character}
#'   \item{golo_alpha}{character}
#'   \item{suite_indicator}{character}
#'   \item{procedure_code}{character}
#'   \item{value}{double}
#'   \item{quantity_1}{double}
#'   \item{quantitiy_2}{double}
#'   \item{industrial_plant_comcode}{character}
#' }
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_exports"


#' Non-EU imports data
#'
#' A dataset containing a random sample of 100 records from an HMRC import
#' download file (SMKI19).
#'
#' @format A data frame with 100 rows and 23 variables:
#' \describe{
#'   \item{comcode}{character}
#'   \item{sitc}{character}
#'   \item{record_type}{character}
#'   \item{cod_seq}{character}
#'   \item{cod_alpha}{character}
#'   \item{account_mm}{character}
#'   \item{account_ccyy}{character}
#'   \item{port_seq}{character}
#'   \item{port_alpha}{character}
#'   \item{flag_seq}{character}
#'   \item{flag_alpha}{character}
#'   \item{trade_ind}{character}
#'   \item{container}{character}
#'   \item{mode_of_transport}{character}
#'   \item{inland_mot}{character}
#'   \item{golo_seq}{character}
#'   \item{golo_alpha}{character}
#'   \item{suite_indicator}{character}
#'   \item{procedure_code}{character}
#'   \item{value}{double}
#'   \item{quantity_1}{double}
#'   \item{quantitiy_2}{double}
#'   \item{industrial_plant_comcode}{character}
#' }
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_imports"




#' EU import/export data
#'
#' A dataset containing a random sample of 100 records from an HMRC arrival or
#' dispatch download file (SMKM46/SMKX46).
#'
#' @format A data frame with 100 rows and 17 variables:
#' \describe{
#'   \item{comcode}{character}
#'   \item{record_type}{character}
#'   \item{cod_seq}{character}
#'   \item{cod_alpha}{character}
#'   \item{trade_ind}{character}
#'   \item{coo_seq}{character}
#'   \item{nature_of_transaction}{character}
#'   \item{mode_of_transport}{character}
#'   \item{period_reference}{character}
#'   \item{suite_indicator}{character}
#'   \item{sitc}{character}
#'   \item{ip_comcode}{character}
#'   \item{stat_value}{double}
#'   \item{nett_mass}{double}
#'   \item{supp_unit}{double}
#' }
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_arrdis"




#' EU import/export estimates data
#'
#' A dataset containing a random sample of 100 records from an HMRC arrival or
#' dispatch estimate download file (SESM16/SESX16).
#'
#' @format A data frame with 100 rows and 4 variables:
#' \describe{
#'   \item{sitc_2}{character}
#'   \item{sitc_0}{character}
#'   \item{month_ind}{character}
#'   \item{estimated_value}{double}
#' }
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_arrdisest"



#' EU import/export estimates data
#'
#' A dataset containing a random sample of 100 records from an HMRC control file
#' (SMKA12).
#'
#' @format A data frame with 100 rows and 31 variables:
#' \describe{
#'   \item{comcode}{character}
#'   \item{intra_extra_ind}{character}
#'   \item{intra_mm_on}{character}
#'   \item{intra_yy_on}{character}
#'   \item{intra_mm_off}{character}
#'   \item{intra_yy_off}{character}
#'   \item{extra_mm_on}{character}
#'   \item{extra_yy_on}{character}
#'   \item{extra_mm_off}{character}
#'   \item{extra_yy_off}{character}
#'   \item{non_trade_id}{character}
#'   \item{sitc_no}{character}
#'   \item{sitc_ind}{character}
#'   \item{sitc_conv_a}{character}
#'   \item{sitc_conv_b}{character}
#'   \item{cn_q2}{character}
#'   \item{supp_arrivals}{character}
#'   \item{supp_dispatches}{character}
#'   \item{supp_imports}{character}
#'   \item{supp_exports}{character}
#'   \item{sub_group_arr}{character}
#'   \item{item_arr}{character}
#'   \item{sub_group_disp}{character}
#'   \item{item_disp}{character}
#'   \item{sub_group_imp}{character}
#'   \item{item_imp}{character}
#'   \item{sub_group_exp}{character}
#'   \item{item_exp}{character}
#'   \item{qty1_alpha}{character}
#'   \item{qty2_alpha}{character}
#'   \item{commodity_alpha}{character}
#' }
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_control"
