## R CMD check results

0 errors | 0 warnings | 0 notes

## Changes in this version (2.1.0)

This is a feature update. In this version I have:

* Added `vcf_to_dosage()` to convert VCF files (any ploidy) and `ped_to_dosage()`
  to convert 'PLINK' .ped files (diploid) into allele dosages.
* Allowed `find_parentage()`, `validate_pedigree()`, `allele_freq_poly()` and
  `solve_composition_poly()` to accept genotypes as text files, VCF files,
  'PLINK' .ped files, data frames or matrices. Existing inputs work unchanged.
* Removed the `ped`, `groups`, `mia`, `sire` and `dam` arguments from
  `solve_composition_poly()`. They depended on internal helpers that were not
  included in the package and always returned an error, so no working code
  is affected.
* Fixed `solve_composition_poly()` failing when only one individual is supplied.

'vcfR' is in Suggests and is only used by `vcf_to_dosage()`; its examples and
tests are skipped when it is not installed.

## Reverse dependencies

We checked 1 reverse dependency (Familia), comparing R CMD check results across
CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages

Familia only calls `solve_composition_poly(Y, X, ploidy)` and does not use the
removed arguments.
