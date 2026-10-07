## R CMD check results

0 errors | 0 warnings | 0 notes

## Changes in this version (2.2.0)

This is a feature update. In this version I have:

* Added `top_n` to `find_parentage()` to report the best `top_n` candidates per
  progeny, and a `tied_candidates` column that flags ambiguous assignments.
  The defaults keep the previous output.
* Added `method = "fill_pedigree"` to `find_parentage()` to fill in missing
  parents of a pedigree, with a new `founders_file` argument.
* Added a `marker_summary` element to the result of `validate_pedigree()` with
  per-marker Mendelian mismatch counts.
* Removed the suggested replacement parent columns (`best_male_candidate`, `best_male_candidate_error_pct`, `best_female_candidate`, `best_female_candidate_error_pct`) from the `validate_pedigree()` output; `find_parentage(method = "fill_pedigree")` now covers this. Familia does not use these columns.
* Added tests, documentation and vignette sections for the new features.

Apart from the removed columns, existing calls and outputs are unchanged.

'vcfR' is in Suggests and is only used by `vcf_to_dosage()`; its examples and
tests are skipped when it is not installed.

## Reverse dependencies

We checked 1 reverse dependency (Familia), comparing R CMD check results across
CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages

The new arguments and result elements are additive, so Familia's existing
calls are unaffected.
