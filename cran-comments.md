## R CMD check results

0 errors | 0 warnings | 0 notes

## Changes in this version (2.0.0)

This is a feature update. In this version I have:

* Generalized `find_parentage()` and `validate_pedigree()` to support any
  ploidy via a new `ploidy` argument (default 2). Even ploidy uses a polysomic
  gamete-range Mendelian test; odd ploidy falls back to a homozygosity-based
  exclusion.
* Kept the default (diploid, `ploidy = 2`) behavior identical to previous
  versions. No user-facing functions were removed and no existing defaults
  were changed.

## Reverse dependencies

There are no reverse dependencies on CRAN.
