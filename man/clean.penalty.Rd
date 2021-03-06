% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Penalty_clean.R
\name{clean.penalty}
\alias{clean.penalty}
\alias{lavaPenalty.clean.hook}
\title{Simplify a lvm object}
\usage{
lavaPenalty.clean.hook(x, simplify.penalty = TRUE, simplify, ...)
}
\arguments{
\item{x}{\code{lvm.penalized}-object}

\item{simplify.penalty}{should the class \code{lvm.penalized} be droped if there is no penalty in the object?}

\item{simplify}{should the class of the object be simplified ? Overwrite the simplify.x arguments.}

\item{...}{additional arguments to lower level functions}
}
\description{
Remove variables with no link and simplify the class of the lvm object
}
\details{
simplify means remove the class \code{"lava.penalized"} if no linear predictor is in the object.
}
\examples{

m <- lvm(Y ~ X1 + X2)
pm <- penalize(m)
pm

cancelPenalty(pm) <- Y~X1
cancelPenalty(pm) <- Y~X2
pm

clean(pm)

}
