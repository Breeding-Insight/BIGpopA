<!-- badges: start -->
[![R-CMD-check](https://github.com/Breeding-Insight/popreviewR/workflows/R-CMD-check/badge.svg)](https://github.com/Breeding-Insight/popreviewR/actions)
![GitHub Release](https://img.shields.io/github/v/release/Breeding-Insight/popreviewR)
[![Development Status](https://img.shields.io/badge/development-active-blue.svg)](https://img.shields.io/badge/development-active-blue.svg)
[![CRAN Status Badge](https://www.r-pkg.org/badges/version/popreviewR)](https://cran.r-project.org/package=popreviewR)
![GitHub License](https://img.shields.io/github/license/Breeding-Insight/popreviewR)
[![codecov](https://app.codecov.io/gh/Breeding-Insight/popreviewR/graph/badge.svg?token=PJUZMRN1NF)](https://app.codecov.io/gh/Breeding-Insight/popreviewR)


<!-- badges: end -->

### Core Genomic Analysis Functions for Breeding Insight

</div>

popreviewR is an R package developed by [Breeding Insight](https://breedinginsight.org/) that provides a robust set of functions for analyzing genomic and pedigree data in diploid and polyploid breeding programs. It's designed to streamline the analysis of breeding and genetic data, empowering researchers and breeders to make informed decisions.

## Installation

The stable version of popreviewR is now available on CRAN. To install from the R terminal:
```R
install.packages("popreviewR")
```


To install the development version of popreviewR, you'll need to have `BiocManager` installed. Then, install from GitHub.
```R
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
    install.packages("remotes")

BiocManager::install("Breeding-Insight/popreviewR", dependencies = TRUE)
library(popreviewR)
```
> Note: This GitHub version of popreviewR is in development. So, there could be bugs present, and the stable version of popreviewR on CRAN should be viewed as more reliable.

## Funding

popreviewR development is supported by [Breeding Insight](https://breedinginsight.org/), a USDA-funded initiative based at the University of Florida - IFAS.

## Citation

If you use popreviewR in your research, please cite as:

Sandercock, Alexander M., Cristiane H. Taniguti, Josue Chinchilla-Vargas, Dongyan Zhao, Shufen Chen, Meng Lin, Manoj Sapkota, and Breeding Insight Team. 2025. “Breeding Insight Genomics Functions for Polypoid and Diploid Species.” https://github.com/Breeding-Insight/popreviewR.

