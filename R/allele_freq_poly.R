#' Compute Allele Frequencies for Populations
#'
#' Computes allele frequencies for specified populations given SNP array data
#'
#' @param geno matrix of genotypes coded as the dosage of allele B \code{{0, 1, 2, ..., ploidy}}
#'  with individuals in rows (named) and SNPs in columns (named)
#' @param populations list of named populations. Each population has a vector of IDs
#'  that belong to the population. Allele frequencies will be derived from all animals
#' @param ploidy integer indicating the ploidy level (default is 2 for diploid)
#' @return data.frame consisting of allele_frequencies for populations (columns) for
#'  each SNP (rows)
#' @references Funkhouser SA, Bates RO, Ernst CW, Newcom D, Steibel JP. Estimation of genome-wide and locus-specific
#' breed composition in pigs. Transl Anim Sci. 2017 Feb 1;1(1):36-44.
#'
#' @examples
#' # Example inputs
#' geno_matrix <- matrix(
#' c(4, 1, 4, 0, # S1
#'   2, 2, 1, 3, # S2
#'   0, 4, 0, 4, # S3
#'   3, 3, 2, 2, # S4
#'   1, 4, 2, 3),# S5
#' nrow = 4, ncol = 5, byrow = FALSE, # individuals=rows, SNPs=cols
#' dimnames = list(paste0("Ind", 1:4), paste0("S", 1:5))
#' )
#'
#'pop_list <- list(
#' PopA = c("Ind1", "Ind2"),
#' PopB = c("Ind3", "Ind4")
#' )
#'
#' allele_freqs <- allele_freq_poly(geno = geno_matrix, populations = pop_list, ploidy = 4)
#' print(allele_freqs)
#'
#' @export
allele_freq_poly <- function(geno, populations, ploidy = 2) {
  
  # Initialize returned df
  X <- matrix(NA, nrow = ncol(geno), ncol = length(populations))
  
  # Subset geno into different populations
  for (i in 1:length(populations)) {
    
    # Get name of ith item in the list (population name)
    pop_name <- names(populations[i])
    
    # Subset geno to only include genotypes of IDs in pop
    pop_geno <- geno[rownames(geno) %in% populations[[i]], ]
    
    # Calculate allele frequencies
    al_freq <- colMeans(pop_geno, na.rm = TRUE) / ploidy
    
    # Add to X
    X[, i] <- al_freq
  }
  
  # Label X with populations and SNPs
  colnames(X) <- names(populations)
  rownames(X) <- colnames(geno)
  
  return(X)
}