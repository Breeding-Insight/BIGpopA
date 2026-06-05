<!-- badges: start -->
[![R-CMD-check](https://github.com/Breeding-Insight/popR/workflows/R-CMD-check/badge.svg)](https://github.com/Breeding-Insight/popR/actions)
![GitHub Release](https://img.shields.io/github/v/release/Breeding-Insight/popR)
[![Development Status](https://img.shields.io/badge/development-active-blue.svg)](https://img.shields.io/badge/development-active-blue.svg)
[![CRAN Status Badge](https://www.r-pkg.org/badges/version/popR)](https://cran.r-project.org/package=popR)
![GitHub License](https://img.shields.io/github/license/Breeding-Insight/popR)
[![codecov](https://app.codecov.io/gh/Breeding-Insight/popR/graph/badge.svg?token=PJUZMRN1NF)](https://app.codecov.io/gh/Breeding-Insight/popR)
<!-- badges: end -->

### Pedigree Validation and Breed/Line Composition Estimation for Diploid and Polyploid Species
</div>

popR is an R package developed by [Breeding Insight](https://breedinginsight.org/) that provides tools for pedigree quality control and genomic breed/line composition estimation in diploid and polyploid breeding populations. It is designed to help researchers and breeders identify pedigree errors, assign parentage from SNP genotype data, and estimate genome-wide breed or line composition.

### Installation

To install the development version of popR, install from GitHub using `remotes`:

```R
install.packages("remotes")
remotes::install_github("Breeding-Insight/popR", dependencies = TRUE)
library(popR)
```
##### Note: popR is currently in development. Please report any bugs or issues on the GitHub Issues page.

### Funding
popR development is supported by Breeding Insight, a USDA-funded initiative based at the University of Florida - IFAS.

## Citation
If you use popR in your research, please cite as:

Chinchilla-Vargas, Josue, and Breeding Insight Team. 2025. "popR: Pedigree Validation and Breed/Line Composition Estimation for Diploid and Polyploid Species." https://github.com/Breeding-Insight/popR.
