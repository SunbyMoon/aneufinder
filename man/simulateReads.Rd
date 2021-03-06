% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulateReads.R
\name{simulateReads}
\alias{simulateReads}
\title{Simulate reads from genome}
\usage{
simulateReads(bsgenome, readLength, bamfile, file,
  pairedEndFragmentLength = NULL, every.X.bp = 500)
}
\arguments{
\item{bsgenome}{A \pkg{\link[BSgenome]{BSgenome}} object containing the sequence of the reference genome.}

\item{readLength}{The length in base pairs of the simulated reads that are written to file.}

\item{bamfile}{A BAM file. This file is used to estimate the distribution of Phred quality scores.}

\item{file}{The filename that is written to disk. The ending .fastq.gz will be appended.}

\item{pairedEndFragmentLength}{If this option is specified, paired end reads with length \code{readLength} will be simulated coming from both ends of fragments of this size. NOT IMPLEMENTED YET.}

\item{every.X.bp}{Stepsize for simulating reads. A read fragment will be simulated every X bp.}
}
\value{
A fastq.gz file is written to disk.
}
\description{
Simulate single or paired end reads from any \pkg{\link[BSgenome]{BSgenome}} object. These simulated reads can be mapped to the reference genome using any aligner to produce BAM files that can be used for mappability correction.
}
\details{
Reads are simulated by splitting the genome into reads with the specified \code{readLength}.
}
\examples{
## Get an example BAM file with single-cell-sequencing reads
bamfile <- system.file("extdata", "BB150803_IV_074.bam", package="AneuFinderData")
## Simulate 51bp reads for at a distance of every 5000bp
if (require(BSgenome.Mmusculus.UCSC.mm10)) {
simulateReads(BSgenome.Mmusculus.UCSC.mm10, bamfile=bamfile, readLength=51,
             file=tempfile(), every.X.bp=5000)
}

}
\author{
Aaron Taudt
}

