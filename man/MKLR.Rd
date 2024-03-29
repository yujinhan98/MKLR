% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MKLR.R
\name{MKLR}
\alias{MKLR}
\title{Multi-class Kernel Logistic Regression}
\usage{
MKLR(
  y,
  x,
  kernel = c("RBF", "polynomial")[1],
  lambda = 0.01,
  sigma2 = 1,
  d = 3,
  lr = 0.001,
  threshold = 1e-06,
  max_iter = 1000
)
}
\arguments{
\item{y}{A \code{n x 1} column vector containing multiclass responses.}

\item{x}{A \code{n x p} matrix containing the covariates.}

\item{kernel}{The kernel to use. Either \code{RBF} (default) or \code{polynomial}.}

\item{lambda}{The regularization parameter.}

\item{sigma2}{The scale in the \code{RBF} and \code{polynomial} kernel. See details.}

\item{d}{The degree in the \code{polynomial} kernel.}

\item{threshold}{The convergence threshold.}

\item{max_iter}{The maximum number of iterations.}
}
\value{
A list containing:
\describe{
\item{\code{x}}{The original \code{x}.}
\item{\code{alpha}}{The vector of fitted weights.}
\item{\code{kernel}}{The kernel.}
\item{\code{sigma2}}{The scale parameter.}
\item{\code{d}}{The polynomial degree.}
}
}
\description{
This function fit a Multi-class Kernel Logistic Regression model to the data (\code{y}, \code{x}) using some pre-specified kernel. The return list contains the estimated kernel weights as well as the original data to perform predictions.There are
two types of kernel, they are 'RBF' and 'polynomial'
}
\details{
The \code{RBF} kernel has the following form:
\deqn{exp(-||x-y||^2/sigma2).}
The \code{polynomial} kernel has the following form:
\deqn{(1+x'y/sigma2)^d.}
}
\seealso{
\link{predict.MKLR}
}
