## R CMD check results

0 errors | 0 warnings | 0 notes

## Changes in this version (2.2.1)

This is a bug-fix release. In this version I have:

* Fixed `check_ped()` reporting each pedigree cycle once per individual in the
  cycle. Each cycle is now reported once, as a closed path in which every id is
  a recorded parent of the one before it (e.g. "A -> B -> A"). Cycle detection
  no longer uses recursion and runs in linear time, so large pedigrees with
  many shared ancestors no longer stall. An individual recorded as its own
  parent is reported once.
* `check_ped()`: the `dependencies` element always has a character
  `dependency` column; with no dependencies it was a data frame without columns.
* `find_parentage()`: the error of tied best pairs (`mendelian_error_pct_2`,
  ...) is rounded to 2 decimals, like the best pair.
* Added tests for large, interlocked and self-parenting cycles.

No function arguments or result names changed.

## Reverse dependencies

We checked 1 reverse dependency (Familia), comparing R CMD check results across
CRAN and dev versions of this package.

* We saw 0 new problems
* We failed to check 0 packages
