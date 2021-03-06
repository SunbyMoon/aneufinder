% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/consensusSegments.R
\name{consensusSegments}
\alias{consensusSegments}
\title{Make consensus segments}
\usage{
consensusSegments(hmms)
}
\arguments{
\item{hmms}{A list of \code{\link{aneuHMM}} or \code{\link{aneuBiHMM}} objects or a character vector of files that contains such objects.}
}
\value{
A \code{\link[GenomicRanges]{GRanges}}.
}
\description{
Make consensus segments from a list of \code{\link{aneuHMM}} or \code{\link{aneuBiHMM}} objects.
}
\details{
The function will produce a \code{\link[GenomicRanges]{GRanges}} object using the \code{\link[GenomicRanges]{disjoin}} function on all extracted \code{$segment} entries.
}
\examples{
## Get results from a small-cell-lung-cancer
lung.folder <- system.file("extdata", "primary-lung", "hmms", package="AneuFinderData")
lung.files <- list.files(lung.folder, full.names=TRUE)
## Get consensus segments and states
consensusSegments(lung.files)

}

