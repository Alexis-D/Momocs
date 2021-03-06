% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cl-validate.R
\name{validate}
\alias{validate}
\title{Validates Coo objects}
\usage{
validate(Coo)
}
\arguments{
\item{Coo}{any Coo object}
}
\value{
a Coo object.
}
\description{
No validation for S3 objects, so this method is a (cheap) attempt at checking
\link{Coo} objects, \link{Out}, \link{Opn} and \link{Ldk} objects.
}
\details{
Implemented before all morphometric methods and handling verbs.
To see what is checked, try eg \code{Momocs:::validate.Coo}
}
\examples{
\dontrun{
validate(bot)
bot[12] <- NA
validate(bot)

validate(hearts)
hearts$ldk[[4]] <- c(1, 2)
validate(hearts)
}
}

