% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{sample_data_arrdis}
\alias{sample_data_arrdis}
\title{EU import/export data}
\format{A data frame with 100 rows and 17 variables:
\tabular{lll}{
\strong{Name} \tab \strong{Type} \tab \strong{Description}\cr
comcode               \tab character \tab 8 digit commodity code\cr
record_type              \tab character \tab Range 0-3 identifies the kind of
suppression record\cr
cod_seq                  \tab character \tab Numeric sequence for Country of
Dispatch\cr
cod_alpha                \tab character \tab Alpha code for Country of
Dispatch\cr
trade_ind                \tab character \tab A code used to identify the type
of trade.\cr
coo_seq               \tab character \tab Numeric sequence for Country of
Origin\cr
coo_alpha             \tab character \tab Alpha code for Country of Origin\cr
nature_of_transaction \tab character \tab Code describing the type of
transaction\cr
mode_of_transport     \tab character \tab Mode of transport by which goods
leave or arrive in the UK\cr
period_reference      \tab character \tab Identifies the month of account of
an item in format 0YYYYMM. For non-amendment records this will be the same as
the file month; for amendment records and late supplementary declarations it
will be the month to which the amendment or supplementary declaration
relates.\cr
suite_indicator          \tab character \tab Identifies commodity codes to be
excluded from General and Special trade compilations\cr
sitc                  \tab character \tab SITC code\cr
industrial_plant_comcode \tab character \tab With effect from January 2011, a
pseudo concessionary comcode beginning 98 used for declaration of high value
Industrial Plant.\cr
no_of_consignments    \tab double    \tab Optional field used to indicate the
number of consignments. Please note that several consignments may be
aggregated.\cr
stat_value            \tab double    \tab Value(£)\cr
nett_mass             \tab double    \tab Weight in kg\cr
supp_unit             \tab double    \tab Alternative quantity
}}
\source{
\url{http://www.uktradeinfo.com/}
}
\usage{
sample_data_arrdis
}
\description{
A dataset containing a random sample of 100 records from an HMRC arrival or
dispatch download file (SMKM46/SMKX46).
}
\keyword{datasets}
