\name{extractCorr}
\alias{extractCorr}
\title{Extracting correlations from a covariance matrix}
\usage{
  extractCorr(mat)
}
\arguments{
  \item{mat}{A covariance matrix.}
}
\value{
  The correlation matrix embedded in \code{mat}.
}
\description{
  Extracting correlations from a covariance matrix
}
\examples{
# 2 dimensional case
d <- 2
tmp <- matrix(rnorm(d^2), d, d)
mcov <- tcrossprod(tmp, tmp)

# Covariance matrix
mcov

# Correlation matrix
extractCorr(mcov)
}

