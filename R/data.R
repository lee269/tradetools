#' Non-EU exports data
#'
#' A dataset containing a ramdom sample of 100 records from an HMRC export
#' download file (SMKE19).
#'
#' @format A data frame with 100 rows and 23 variables:
#'
#' \tabular{lll}{
#' \strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
#' comcode                  \tab character \tab 8 digit commodity code\cr
#' sitc                     \tab character \tab SITC code\cr
#' record_type              \tab character \tab Range 0-3 identifies the kind of
#' suppression record\cr
#'
#' cod_seq                  \tab character \tab Numeric sequence for Country of
#' Destination\cr
#'
#' cod_alpha                \tab character \tab Alpha code for Counry of
#' Destination\cr
#'
#' account_mm               \tab character \tab Identifies the month of account
#' of an item in format MM. For non-amendment records this will be the same as
#' the file month; for amendment records it will be the month to which the
#' amendment relates.\cr
#'
#' account_ccyy             \tab character \tab Identifies the century and year
#' of an item in format CCYY. For non-amendment records this will be the same as
#' the file month; for amendment records it will be the year to which the
#' amendment relates.\cr
#'
#' port_seq                 \tab character \tab Numeric code for port of export\cr
#' port_alpha               \tab character \tab Alpha code for port of export\cr
#' flag_seq                 \tab character \tab Numeric sequence for the flag
#' (nationality) of the ship. Zero for Trade Indicator ‘5’ items.\cr
#'
#' flag_alpha               \tab character \tab Numeric sequence for the flag
#' (nationality) of the ship. Zero for Trade Indicator ‘5’ items.\cr
#'
#' trade_ind                \tab character \tab A code used to identify the type
#' of trade.\cr
#'
#' container                \tab character \tab Code identifying goods
#' transported by container: 0 = not in container, 1 = in container\cr
#'
#' mode_of_transport        \tab character \tab Mode of transport by which goods
#' leave or arrive in the UK\cr
#'
#' inland_mot               \tab character \tab Optional code identifying the
#' mode of transport where there has been an ‘internal’ movement within the
#' Community before goods have been subject to Customs formalities\cr
#'
#' golo_seq                 \tab character \tab Numeric sequence for Location
#' alpha (golo_alpha)\cr
#'
#' golo_alpha               \tab character \tab Alpha code indicating location
#' of inland clearance (inland clearance depot or inland rail depot) if goods
#' were not cleared at the border. Also used to indicate relevant free zone
#' location for goods entering or leaving freezone.\cr
#'
#' suite_indicator          \tab character \tab Identifies commodity codes to be
#' excluded from General and Special trade compilations\cr
#'
#' procedure_code           \tab character \tab This identifies specific types
#' of Customs Procedure\cr
#'
#' value                    \tab double    \tab Value (£)\cr
#' quantity_1               \tab double    \tab Quantity\cr
#' quantitiy_2              \tab double    \tab Quantity (alternate measure)\cr
#' industrial_plant_comcode \tab character \tab With effect from January 2011, a
#' pseudo concessionary comcode beginning 98 used for declaration of high value
#' Industrial Plant.
#'
#' }
#'
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_exports"


#' Non-EU imports data
#'
#' A dataset containing a random sample of 100 records from an HMRC import
#' download file (SMKI19).
#'
#' @format A data frame with 100 rows and 23 variables:
#'
#' \tabular{lll}{
#' \strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
#' comcode                  \tab character \tab 8 digit commodity code\cr
#' sitc                     \tab character \tab SITC code\cr
#'
#' record_type              \tab character \tab Range 0-3 identifies the kind of
#' suppression record\cr
#'
#' cod_seq                  \tab character \tab Numeric sequence for Country of
#' Dispatch\cr
#'
#' cod_alpha                \tab character \tab Alpha code for Country of
#' Dispatch\cr
#'
#' account_mm               \tab character \tab Identifies the month of account
#' of an item in format MM. For non-amendment records this will be the same as
#' the file month; for amendment records it will be the month to which the
#' amendment relates.\cr
#'
#' account_ccyy             \tab character \tab Identifies the century and year
#' of an item in format CCYY. For non-amendment records this will be the same as
#' the file month; for amendment records it will be the year to which the
#' amendment relates.\cr
#'
#' port_seq                 \tab character \tab Numeric code for port of import\cr
#' port_alpha               \tab character \tab Alpha code for port of import\cr
#' flag_seq                 \tab character \tab Numeric sequence for the flag
#' (nationality) of the ship. Zero for Trade Indicator ‘5’ items.\cr
#'
#' flag_alpha               \tab character \tab Numeric sequence for the flag
#' (nationality) of the ship. Zero for Trade Indicator ‘5’ items.\cr
#'
#' trade_ind                \tab character \tab A code used to identify the type
#' of trade.\cr
#'
#' container                \tab character \tab Code identifying goods
#' transported by container: 0 = not in container, 1 = in container\cr
#'
#' mode_of_transport        \tab character \tab Mode of transport by which goods
#' leave or arrive in the UK\cr
#'
#' inland_mot               \tab character \tab Optional code identifying the
#' mode of transport where there has been an ‘internal’ movement within the
#' Community before goods have been subject to Customs formalities\cr
#'
#' golo_seq                 \tab character \tab Numeric sequence for Location
#' alpha (golo_alpha)\cr
#'
#' golo_alpha               \tab character \tab Alpha code indicating location
#' of inland clearance (inland clearance depot or inland rail depot) if goods
#' were not cleared at the border. Also used to indicate relevant free zone
#' location for goods entering or leaving freezone.\cr
#'
#' suite_indicator          \tab character \tab Identifies commodity codes to be
#' excluded from General and Special trade compilations\cr
#'
#' procedure_code           \tab character \tab This identifies specific types
#' of Customs Procedure\cr
#'
#' value                    \tab double    \tab Value (£)\cr
#' quantity_1               \tab double    \tab Quantity\cr
#' quantitiy_2              \tab double    \tab Quantity (alternate measure)\cr
#' industrial_plant_comcode \tab character \tab With effect from January 2011, a
#' pseudo concessionary comcode beginning 98 used for declaration of high value
#' Industrial Plant.
#'
#' }
#'
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_imports"




#' EU import/export data
#'
#' A dataset containing a random sample of 100 records from an HMRC arrival or
#' dispatch download file (SMKM46/SMKX46).
#'
#' @format A data frame with 100 rows and 17 variables:
#' \tabular{lll}{
#' \strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
#' comcode               \tab character \tab 8 digit commodity code\cr
#' record_type              \tab character \tab Range 0-3 identifies the kind of
#' suppression record\cr
#' cod_seq                  \tab character \tab Numeric sequence for Country of
#' Dispatch\cr
#' cod_alpha                \tab character \tab Alpha code for Country of
#' Dispatch\cr
#' trade_ind                \tab character \tab A code used to identify the type
#' of trade.\cr
#' coo_seq               \tab character \tab Numeric sequence for Country of
#' Origin\cr
#' coo_alpha             \tab character \tab Alpha code for Country of Origin\cr
#' nature_of_transaction \tab character \tab Code describing the type of
#' transaction\cr
#' mode_of_transport     \tab character \tab Mode of transport by which goods
#' leave or arrive in the UK\cr
#' period_reference      \tab character \tab Identifies the month of account of
#' an item in format 0YYYYMM. For non-amendment records this will be the same as
#' the file month; for amendment records and late supplementary declarations it
#' will be the month to which the amendment or supplementary declaration
#' relates.\cr
#' suite_indicator          \tab character \tab Identifies commodity codes to be
#' excluded from General and Special trade compilations\cr
#' sitc                  \tab character \tab SITC code\cr
#' industrial_plant_comcode \tab character \tab With effect from January 2011, a
#' pseudo concessionary comcode beginning 98 used for declaration of high value
#' Industrial Plant.\cr
#' no_of_consignments    \tab double    \tab Optional field used to indicate the
#' number of consignments. Please note that several consignments may be
#' aggregated.\cr
#' stat_value            \tab double    \tab Value(£)\cr
#' nett_mass             \tab double    \tab Weight in kg\cr
#' supp_unit             \tab double    \tab Alternative quantity
#' }
#'
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_arrdis"




#' EU import/export estimates data
#'
#' A dataset containing a random sample of 100 records from an HMRC arrival or
#' dispatch estimate download file (SESM16/SESX16).
#'
#' @format A data frame with 100 rows and 4 variables:
#'
#' \tabular{lll}{
#' \strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
#' sitc_2          \tab character \tab 2 digit SITC code\cr
#' sitc_0          \tab character \tab SITC zero field - value set to 0\cr
#' month_ind       \tab character \tab Month\cr
#' estimated_value \tab double    \tab Estimated value
#' }
#'
#'
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_arrdisest"



#' HMRC control file data
#'
#' A dataset containing a random sample of 100 records from an HMRC control file
#' (SMKA12).
#'
#' @format A data frame with 100 rows and 31 variables:
#' \tabular{lll}{
#' \strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
#' comcode         \tab character \tab 8 digit commodity code\cr
#' intra_extra_ind \tab character \tab x\cr
#' intra_mm_on     \tab character \tab x\cr
#' intra_yy_on     \tab character \tab x\cr
#' intra_mm_off    \tab character \tab x\cr
#' intra_yy_off    \tab character \tab x\cr
#' extra_mm_on     \tab character \tab x\cr
#' extra_yy_on     \tab character \tab x\cr
#' extra_mm_off    \tab character \tab x\cr
#' extra_yy_off    \tab character \tab x\cr
#' non_trade_id    \tab character \tab x\cr
#' sitc_no         \tab character \tab 5 digit SITC code\cr
#' sitc_ind        \tab character \tab x\cr
#' sitc_conv_a     \tab character \tab x\cr
#' sitc_conv_b     \tab character \tab x\cr
#' cn_q2           \tab character \tab x\cr
#' supp_arrivals   \tab character \tab x\cr
#' supp_dispatches \tab character \tab x\cr
#' supp_imports    \tab character \tab x\cr
#' supp_exports    \tab character \tab x\cr
#' sub_group_arr   \tab character \tab x\cr
#' item_arr        \tab character \tab x\cr
#' sub_group_disp  \tab character \tab x\cr
#' item_disp       \tab character \tab x\cr
#' sub_group_imp   \tab character \tab x\cr
#' item_imp        \tab character \tab x\cr
#' sub_group_exp   \tab character \tab x\cr
#' item_exp        \tab character \tab x\cr
#' qty1_alpha      \tab character \tab Quantity unit\cr
#' qty2_alpha      \tab character \tab Supplementary unit\cr
#' commodity_alpha \tab character \tab Commodity description
#' }
#'
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_control"






#' HMRC trader data
#'
#' A dataset containing a random sample of 100 records of HMRC importer/exporter
#' details data. The data is in the format returned by the
#' \code{\link{read_hmrc_traders}} function in the trade tools package. The
#' original files on the \url{www.uktradeinfo.com} site are named
#' Importers/Exporters.
#'
#'
#' @format A data frame with 100 rows and 31 variables:
#'
#'
#' \tabular{lll}{
#' \strong{Name}        \tab \strong{Type}      \tab \strong{Description}\cr
#' year        \tab double    \tab Year\cr
#' month       \tab double    \tab Month\cr
#' period      \tab integer   \tab Period in form YYYYMM\cr
#' nolines     \tab integer   \tab Number of lines for the company\cr
#' companyname \tab character \tab Name of company\cr
#' address1    \tab character \tab Address line 1\cr
#' address2    \tab character \tab Address line 2\cr
#' address3    \tab character \tab Address line 3\cr
#' address4    \tab character \tab Address line 4\cr
#' address5    \tab character \tab Address line 5\cr
#' postcode    \tab character \tab Postcode\cr
#' codenum     \tab character \tab Sequence number of commodity code\cr
#' comcode     \tab character \tab Commodity code
#' }
#'
#' @source \url{http://www.uktradeinfo.com/}
"sample_data_traders"
