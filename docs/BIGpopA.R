## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  message = FALSE,
  warning = FALSE,
  fig.align = "center",
  fig.width = 7,
  fig.height = 4.5
)

## ----eval=FALSE---------------------------------------------------------------
# install.packages("BIGpopA")

## -----------------------------------------------------------------------------
library(BIGpopA)

# SNP genotypes coded 0/1/2 (NA = missing); C_low is mostly missing
genotypes = data.frame(
  id    = c("M1","F1","M2","F2","C1","C2","C3","C_bad","C_low"),
  snp01 = c(  0,   0,   2,   2,   0,   2,   1,     0,     NA),
  snp02 = c(  0,   0,   2,   0,   0,   1,   0,     0,     NA),
  snp03 = c(  0,   2,   0,   2,   1,   1,   1,     1,     NA),
  snp04 = c(  0,   2,   0,   0,   1,   0,   0,     1,     NA),
  snp05 = c(  2,   0,   1,   1,   1,   1,   1,     1,     NA),
  snp06 = c(  2,   0,   1,   0,   1,   1,   1,     1,     NA),
  snp07 = c(  2,   2,   0,   1,   2,   0,   2,     2,     NA),
  snp08 = c(  2,   2,   2,   2,   2,   2,   2,     2,     NA),
  snp09 = c(  0,   1,   0,   2,   1,   1,   1,     1,      0),
  snp10 = c(  0,   1,   2,   0,   0,   1,   0,     0,      0),
  snp11 = c(  2,   1,   1,   2,   1,   2,   2,     1,      2),
  snp12 = c(  2,   1,   0,   1,   2,   1,   1,     2,      2),
  stringsAsFactors = FALSE
)

# pedigree with founders coded 0, a mis-assigned trio (C_bad),
# and a duplicated row (C_missing)
pedigree = data.frame(
  id            = c("M1","F1","M2","F2","C1","C2","C3","C_bad","C_low","C_missing","C_missing"),
  male_parent   = c("0", "0", "0", "0", "M1","M2","M1","M2",   "M1",   "M1",       "M1"),
  female_parent = c("0", "0", "0", "0", "F1","F2","F2","F1",   "F1",   "F1",       "F1"),
  stringsAsFactors = FALSE
)

# candidate parents (with sex) and progeny to assign
parents = data.frame(
  id  = c("M1","M2","F1","F2"),
  sex = c("M", "M", "F", "F"),
  stringsAsFactors = FALSE
)

progeny = data.frame(
  id = c("C1","C2","C3","C_bad","C_low","C_missing"),
  stringsAsFactors = FALSE
)

pedigree
genotypes

## -----------------------------------------------------------------------------
#check_ped
clean_ped_results = check_ped(pedigree, verbose = FALSE)

# the corrected, analysis-ready pedigree
clean_ped = clean_ped_results$corrected_pedigree
clean_ped

## -----------------------------------------------------------------------------
#validate_ped
ped_validate_results = validate_pedigree(clean_ped, genotypes,
                                         verbose = FALSE, plot_results = TRUE)

ped_validate_report = ped_validate_results$full_results
ped_validate_report

## -----------------------------------------------------------------------------
#find_parentage
find_parentage_results = find_parentage(genotypes, parents, progeny,
                                        method = "best_pair",
                                        verbose = FALSE, plot_results = TRUE)

find_parentage_report = find_parentage_results$full_results
find_parentage_report

## ----eval=FALSE---------------------------------------------------------------
# clean_ped = check_ped(pedigree)$corrected_pedigree
# validated = validate_pedigree(clean_ped, genotypes)$full_results
# assigned  = find_parentage(genotypes, parents, progeny, method = "best_pair")$full_results

## -----------------------------------------------------------------------------
sessionInfo()

## -----------------------------------------------------------------------------
citation("BIGpopA")

