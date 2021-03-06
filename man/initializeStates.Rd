% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/initializeStates.R
\name{initializeStates}
\alias{initializeStates}
\title{Initialize state factor levels and distributions}
\usage{
initializeStates(states)
}
\arguments{
\item{states}{A subset of \code{c("zero-inflation","0-somy","1-somy","2-somy","3-somy","4-somy",...)}.}
}
\value{
A \code{list} with $labels, $distributions and $multiplicity values for the given states.
}
\description{
Initialize the state factor levels and distributions for the specified states.
}

