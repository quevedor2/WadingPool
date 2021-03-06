% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregateAndFilter.R
\name{aggregateAndFilter}
\alias{aggregateAndFilter}
\title{Aggregate samples and filter SNPs}
\usage{
aggregateAndFilter(
  s_paths,
  dbsnp_dir,
  num_samples = 2,
  dbsnp_file = "all.common_all_20151104.bed",
  chrs = paste0("chr", c(1:22, "X", "Y"))
)
}
\arguments{
\item{s_paths}{Sample SNP paths from genSnpZygosity()}

\item{dbsnp_dir}{Directory containing the chr-dbSNP bed files}

\item{num_samples}{Number of samples required to have that SNP [Default=2]}

\item{dbsnp_file}{Main dbSNP file before splitting [default=all.common_all_20151104.bed]}

\item{chrs}{List of chrs [Default=chr1, chr2, .., chrY]}
}
\value{
A vector of the input, output files and runtime
}
\description{
Works in conjunction with the genSnpZygosity() function.
This function will take the output from that function and concatenate
each samples SNP results into a csv. It will then go through 
each SNP to identify whether X or more samples have coverage on that
SNP and isolate the genomic location and genotypes for those SNPs
}
