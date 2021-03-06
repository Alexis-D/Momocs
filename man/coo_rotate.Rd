% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coo-utilities.R
\name{coo_rotate}
\alias{coo_rotate}
\title{Rotates coordinates}
\usage{
coo_rotate(coo, theta = 0)
}
\arguments{
\item{coo}{either a \code{matrix} of (x; y) coordinates, or any \link{Coo} object.}

\item{theta}{\code{numeric}the angle (in radians) to rotate shapes.}
}
\value{
a \code{matrix} of (x; y) coordinates, or a \link{Coo} object.
}
\description{
Rotates the coordinates by a 'theta' angle (in radians) in
the trigonometric direction (anti-clockwise). If not provided,
assumed to be the centroid size. It involves three steps: centering from current position,
dividing coordinates by 'scale', translating to the original position.
}
\examples{
coo_plot(bot[1])
coo_plot(coo_rotate(bot[1], pi/2))
# on Coo
stack(bot)
stack(coo_rotate(bot, pi/2))
}
\seealso{
Other coo_ utilities: \code{\link{coo_aligncalliper}},
  \code{\link{coo_alignminradius}},
  \code{\link{coo_alignxax}}, \code{\link{coo_align}},
  \code{\link{coo_baseline}}, \code{\link{coo_bookstein}},
  \code{\link{coo_calliper}}, \code{\link{coo_centdist}},
  \code{\link{coo_center}}, \code{\link{coo_centpos}},
  \code{\link{coo_centsize}}, \code{\link{coo_close}},
  \code{\link{coo_down}}, \code{\link{coo_dxy}},
  \code{\link{coo_extract}}, \code{\link{coo_flipx}},
  \code{\link{coo_force2close}},
  \code{\link{coo_interpolate}}, \code{\link{coo_jitter}},
  \code{\link{coo_left}}, \code{\link{coo_nb}},
  \code{\link{coo_perimcum}}, \code{\link{coo_perimpts}},
  \code{\link{coo_perim}}, \code{\link{coo_rev}},
  \code{\link{coo_right}}, \code{\link{coo_rotatecenter}},
  \code{\link{coo_samplerr}}, \code{\link{coo_sample}},
  \code{\link{coo_scalex}}, \code{\link{coo_scale}},
  \code{\link{coo_shearx}}, \code{\link{coo_slice}},
  \code{\link{coo_slidedirection}},
  \code{\link{coo_slidegap}}, \code{\link{coo_slide}},
  \code{\link{coo_smoothcurve}}, \code{\link{coo_smooth}},
  \code{\link{coo_template}}, \code{\link{coo_trans}},
  \code{\link{coo_trimbottom}}, \code{\link{coo_trimtop}},
  \code{\link{coo_trim}}, \code{\link{coo_up}},
  \code{\link{is_closed}}

Other rotation functions: \code{\link{coo_rotatecenter}}
}

