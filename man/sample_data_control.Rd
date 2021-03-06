% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{sample_data_control}
\alias{sample_data_control}
\title{HMRC control file data}
\format{A data frame with 100 rows and 31 variables:
\tabular{lll}{
\strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
comcode         \tab character \tab 8 digit commodity code\cr
intra_extra_ind \tab character \tab x\cr
intra_mm_on     \tab character \tab x\cr
intra_yy_on     \tab character \tab x\cr
intra_mm_off    \tab character \tab x\cr
intra_yy_off    \tab character \tab x\cr
extra_mm_on     \tab character \tab x\cr
extra_yy_on     \tab character \tab x\cr
extra_mm_off    \tab character \tab x\cr
extra_yy_off    \tab character \tab x\cr
non_trade_id    \tab character \tab x\cr
sitc_no         \tab character \tab 5 digit SITC code\cr
sitc_ind        \tab character \tab x\cr
sitc_conv_a     \tab character \tab x\cr
sitc_conv_b     \tab character \tab x\cr
cn_q2           \tab character \tab x\cr
supp_arrivals   \tab character \tab x\cr
supp_dispatches \tab character \tab x\cr
supp_imports    \tab character \tab x\cr
supp_exports    \tab character \tab x\cr
sub_group_arr   \tab character \tab x\cr
item_arr        \tab character \tab x\cr
sub_group_disp  \tab character \tab x\cr
item_disp       \tab character \tab x\cr
sub_group_imp   \tab character \tab x\cr
item_imp        \tab character \tab x\cr
sub_group_exp   \tab character \tab x\cr
item_exp        \tab character \tab x\cr
qty1_alpha      \tab character \tab Quantity unit\cr
qty2_alpha      \tab character \tab Supplementary unit\cr
commodity_alpha \tab character \tab Commodity description
}}
\source{
\url{http://www.uktradeinfo.com/}
}
\usage{
sample_data_control
}
\description{
A dataset containing a random sample of 100 records from an HMRC control file
(SMKA12).
}
\keyword{datasets}
