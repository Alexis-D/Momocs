% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mult-LDA.R
\name{LDA}
\alias{LDA}
\alias{LDA.PCA}
\alias{LDA.default}
\title{Linear Discriminant Analysis on Coe objects}
\usage{
LDA(x, fac, retain, ...)

\method{LDA}{default}(x, fac, retain, ...)

\method{LDA}{PCA}(x, fac, retain = 0.99, verbose = TRUE, ...)
}
\arguments{
\item{x}{a  PCA object}

\item{fac}{the grouping factor (names of one of the $fac column or column id)}

\item{retain}{the proportion of the total variance to retain (if retain<1) using \link{scree}, or the number of PC axis (if retain>1).}

\item{...}{additional arguments to feed \link{lda}}

\item{verbose}{logical whether to print messages}
}
\value{
a 'LDA' object on which to apply \link{plot.LDA}, which is a list with components:
\itemize{
 \item \code{x} any \link{Coe} object (or a matrix)
 \item \code{fac} grouping factor used
 \item \code{removed} ids of columns in the original matrix that have been removed since constant (if any)
 \item \code{mod} the raw lda mod from \link{lda}
 \item \code{mod.pred} the predicted model using x and mod
 \item \code{CV.fac} cross-validated classification
 \item \code{CV.tab} cross-validation tabke
 \item \code{CV.correct} proportion of correctly classified individuals
 \item \code{CV.ce} class error
 \item \code{LDs} unstandardized LD scores see Claude (2008)
 \item \code{mshape} mean values of coefficients in the original matrix
 \item \code{method} inherited from the Coe object (if any)
}
}
\description{
Performs a LDA on Coe objects. Relies on \link{lda} in MASS.
}
\note{
For LDA.PCA, retain can be passed as a vector (eg: 1:5, and retain=1, retain=2, ...,
retain=5) will be tried, or as "best" (same as before but retain=1:number_of_pc_axes is used).
}
\examples{
data(bot)
bot.f <- efourier(bot, 24)
bot.p <- PCA(bot.f)
LDA(bot.p, 'type', retain=0.99) # retains 0.99 of the total variance
LDA(bot.p, 'type', retain=5) # retain 5 axis
bot.l <- LDA(bot.p, 'type', retain=0.99)
bot.l
plot(bot.l)
bot.f$fac$plop <- factor(rep(letters[1:4], each=10))
bot.l <- LDA(PCA(bot.f), 'plop')
bot.l
plot(bot.l)
}
\seealso{
Other multivariate: \code{\link{CLUST}},
  \code{\link{KMEANS}}, \code{\link{MANOVA_PW}},
  \code{\link{MANOVA}}, \code{\link{PCA}}
}

