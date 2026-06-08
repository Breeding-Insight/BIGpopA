# BIBpopA 0.1.0

- Initial release of `BIBpopA` as a standalone package.
- `BIBpopA` contains pedigree validation and breed/line composition functions
  previously found in [BIGr](https://github.com/Breeding-Insight/BIGr),
  where they will no longer be maintained going forward.
- These functions are the backbone of the pedigree and composition modules
  in the [familia](https://github.com/Breeding-Insight/familia) Shiny app.

## Functions included

- `check_ped()` — checks and corrects common pedigree errors (duplicate rows,
  conflicting trios, missing parents, cycles, inconsistent sex roles)
- `find_parentage()` — assigns most likely parent(s) to progeny using
  Mendelian error rates or homozygous mismatch rates
- `validate_pedigree()` — validates parent-offspring trios against SNP
  genotype data and outputs a corrected pedigree
- `allele_freq_poly()` — computes allele frequencies for diploid and
  polyploid reference populations
- `solve_composition_poly()` — estimates genome-wide breed/line composition
  using quadratic programming
