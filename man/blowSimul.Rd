\name{blowSimul}
\alias{blowSimul}
\title{Simulates from the blowfly model}
\usage{
  blowSimul(param, nsim, extraArgs, ...)
}
\arguments{
  \item{param}{vector of log-parameters: delta, P, N0,
  var.p, tau and var.d. The interpretation of these
  parameters is described in Wood (2010).}

  \item{nsim}{Number of simulations from the model.}

  \item{extraArgs}{A named list of additional arguments:
  \itemize{ \item{\code{nObs} = Length of each simulated
  time series.} \item{\code{nBurn} = Number of initial
  steps to be discarded before saving the following
  \code{nObs} steps.} \item{\code{steps} = Positive
  integer. If \code{steps == n} the observations correspond
  to \code{n} time steps.} }}

  \item{...}{Need for compatibility with \code{synlik}, but
  not used.}
}
\value{
  A matrix \code{nsim} by \code{nObs}, where each row is a
  simulated path.
}
\description{
  Simulator for the blowfly model proposed by Wood (2010).
}
\examples{
tmp <- blowSimul(param = log( c( "delta" = 0.16, "P" = 6.5, "N0" = 400,
                                 "var.p" = 0.1, "tau" = 14, "var.d" = 0.1)  ),
                 nsim = 2,
                 extraArgs = list("nObs" = 200, "nBurn" = 1000, "steps" = 2))
matplot(t(tmp), type = 'l', ylab = "Y", xlab = "Time")
}
\author{
  Simon Wood and Matteo Fasiolo <matteo.fasiolo@gmail.com>.
}
\references{
  Simon N Wood. Statistical inference for noisy nonlinear
  ecological dynamic systems. Nature, 466(7310):1102--1104,
  2010. \cr \cr Brillinger, D. R., J. Guckenheimer, P.
  Guttorp, and G. Oster. 1980.  Empirical modelling of
  population time series data: the case of age and density
  dependent vital rates. Lectures on Mathematics in the
  Life Sciences13:65-90.  \cr \cr Nicholson, A. J. 1957.
  The self-adjustment of populations to change.  Cold
  Spring Harbor Symposia on Quantitative Biology22:153-173.
}
\seealso{
  \link{blow_sl}
}

