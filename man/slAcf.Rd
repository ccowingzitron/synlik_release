\name{slAcf}
\alias{slAcf}
\title{Estimate auto-covariances for multiple datasets.}
\usage{
  slAcf(x, max.lag = 10)
}
\arguments{
  \item{x}{a matrix. Each column contains a replicate
  series.}

  \item{max.lag}{How many lags to use.}
}
\value{
  a matrix where each column contains the coefficients for
  a different replicate. The first coefficient corresponds
  to lag == 0, hence it is the variance, the second is the
  covariance one step ahead and so on.
}
\description{
  Function that, give time series data, transforms them
  into auto-covariances with different lags.
}
\examples{
library(synlik)
set.seed(10)
x <- matrix(runif(1000),100,10)
acf <- slAcf(x)
}
\author{
  Simon N. Wood, maintainer Matteo Fasiolo
  <matteo.fasiolo@gmail.com>.
}

