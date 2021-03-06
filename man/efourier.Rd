% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/core-out-efourier.R
\name{efourier}
\alias{efourier}
\alias{efourier.Out}
\alias{efourier.default}
\title{Elliptical Fourier transform}
\usage{
efourier(x, ...)

\method{efourier}{default}(x, nb.h, smooth.it = 0, verbose = TRUE, ...)

\method{efourier}{Out}(x, nb.h, smooth.it = 0, norm = TRUE, start = FALSE,
  verbose = TRUE, ...)
}
\arguments{
\item{x}{A \code{list} or a \code{matrix} of coordinates or a \code{Out} object}

\item{...}{useless here}

\item{nb.h}{\code{integer}. The number of harmonics to use. If missing 99pc harmonic power is used.}

\item{smooth.it}{\code{integer}. The number of smoothing iterations to
perform.}

\item{verbose}{\code{logical}. Whether to print or not diagnosis messages.}

\item{norm}{whether to normalize the coefficients using \link{efourier_norm}}

\item{start}{logical whether to consider the first point as homologous}
}
\value{
A list with these components: \item{an }{\code{vector} of
\eqn{a_{1->n}} harmonic coefficients.} \item{bn }{\code{vector} of
\eqn{b_{1->n}} harmonic coefficients.} \item{cn }{\code{vector} of
\eqn{c_{1->n}} harmonic coefficients.} \item{dn }{\code{vector} of
\eqn{d_{1->n}} harmonic coefficients.} \item{ao }{\code{ao} Harmonic
coefficient.} \item{co }{\code{co} Harmonic coefficient.}
}
\description{
\code{efourier} computes Elliptical Fourier Analysis (or Transforms or EFT)
from a matrix (or a list) of (x; y) coordinates.
}
\details{
For the maths behind see the paper in JSS.

Normalization of coefficients has long been a matter of trouble,
and not only for newcomers. There are two ways of normalizing outlines: the first,
and by far the msot used, is to use a "numerical" alignment, directly on the
matrix of coefficients. The coefficients of the first harmonic are consumed
by this process but harmonics of higher rank are normalized in terms of size
and rotation. This is sometimes referred as using the "first ellipse", as the
harmonics define an ellipse in the plane, and the first one is the mother of all
ellipses, on which all others "roll" along. This approach is really convenient
as it is done easily by most software (if not the only option) and by Momocs too.
It is the default option of \code{efourier}.

But here is the pitfall: if your shapes are prone to bad aligments among all
the first ellipses, this will result in poorly (or even not at all) "homologous" coefficients.
The shapes prone to this are either (at least roughly) circular and/or with a strong
bilateral symmetry. You can try to use \code{\link{stack}} on the \code{\link{Coe}} object
 returned by \code{efourier}. Also, when plotting PCA using Momocs,
this will be strikingly clear though. This phenomenon will result in two clusters,
and more strikingly into upside-down (or 180 degrees rotated)
shapes on the morphospace. If this happen, you should seriously consider
aligning your shapes \emph{before} the \code{efourier} step,
and performing the latter with no normalization (\code{norm = FALSE}), since
it has been done before.

You have several options to align your shapes, using control points (or landmarks),
of Procrustes alignment (see \code{\link{fgProcrustes}}) through their calliper
length (see \code{\link{coo_aligncalliper}}), etc. You should also make the first
point homologous either with \code{\link{coo_slide}} or \code{\link{coo_slidedirection}}
to minimize any subsequent problems.

I will dedicate (some day) a vignette or a paper to this problem.
}
\note{
Directly borrowed for Claude (2008), and also called \code{efourier} there.
}
\examples{
data(bot)
coo <- bot[1]
coo_plot(coo)
ef <- efourier(coo, 12)
ef
efi <- efourier_i(ef)
coo_draw(efi, border='red', col=NA)
}
\references{
Claude, J. (2008) \emph{Morphometrics with R}, Use R! series,
Springer 316 pp.
Ferson S, Rohlf FJ, Koehn RK. 1985. Measuring shape variation of
two-dimensional outlines. \emph{Systematic Biology} \bold{34}: 59-68.
}
\seealso{
Other efourier: \code{\link{efourier_i}},
  \code{\link{efourier_norm}}, \code{\link{efourier_shape}}
}

