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
* Added a `marker_trio_table` argument to `validate_pedigree()` that returns a marker-by-trio table of per-marker statuses (default FALSE, so existing output is unchanged).
* Added `assign_composition_line()`, which turns the output of `solve_composition_poly()` into a table of percentages per line with a predicted line and an assignment threshold (default 50%). `solve_composition_poly()` is unchanged.
* Fixed `validate_pedigree()` so that `low_markers_remove_female_parent` removes only the female parent in `corrected_pedigree` (it previously also removed the male parent).
* Added tests, documentation and vignette sections for the new features.

Apart from the removed columns, existing calls and outputs are unchanged.

## Why this is version 2.2.0 and not 3.0.0

The four `best_*_candidate` columns removed from `validate_pedigree()` were
added in 2.1.0 as an experimental suggestion that duplicated, with weaker
statistics, what `find_parentage()` does. They are the only output removed and
no function argument was removed or changed. The only reverse dependency
(Familia) does not use them, as shown by the reverse dependency check below,
and all other calls and outputs are unchanged. Because the break is limited to
four optional output columns with a documented replacement
(`find_parentage(method = "fill_pedigree")`) and has no effect on any package
on CRAN, we judged a minor version increase appropriate. The removal is stated
in `NEWS.md`.

'vcfR' is in Suggests and is only used by `vcf_to_dosage()`; its examples and
tests are skipped when it is not installed.

## Reverse dependencies

We checked 1 reverse dependency (Familia), comparing R CMD check results across
CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages

The new arguments and result elements are additive, so Familia's existing
calls are unaffected.
