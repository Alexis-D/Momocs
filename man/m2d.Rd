% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/babel-bridges.R
\name{m2d}
\alias{m2d}
\title{Converts a matrix of coordinates to a data.frame}
\usage{
m2d(m)
}
\arguments{
\item{m}{a matrix (see above).}
}
\value{
a data.frame (see above).
}
\description{
Converts a \code{m x 2} matrix of coordinates named data.frame.
}
\examples{
data(wings)
m2d(wings[3])
}
\seealso{
\link{m2d} the reverse function.

Other bridges functions: \code{\link{a2l}},
  \code{\link{a2m}}, \code{\link{as_df}},
  \code{\link{l2a}}, \code{\link{l2m}}, \code{\link{m2a}},
  \code{\link{m2ll}}, \code{\link{m2l}}
}

