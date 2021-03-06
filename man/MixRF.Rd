% Please edit documentation in R/MixRF.r
\name{MixRF}
\alias{MixRF}
\title{Mixed Random Forest}
\usage{
MixRF(Y, X, random, data, initialRandomEffects = 0, ErrorTolerance = 0.001, 
    MaxIterations = 1000)
}
\arguments{
\item{Y}{The outcome variable.}

\item{X}{A data frame or matrix contains the predictors.}

\item{random}{A string in lme4 format indicates the random effect model.}

\item{data}{The data set as a data frame.}

\item{initialRandomEffects}{The initial values for random effects.}

\item{ErrorTolerance}{The tolerance for log-likelihood.}

\item{MaxIterations}{The maximum iteration times.}
}
\value{
A list contains the random forest ($forest), mixed model ($MixedModel), and random effects ($RandomEffects).
See the example below for the usage.
}
\description{
The function to fit a random forest with random effects.
}
\examples{

data(sleepstudy)

tmp = MixRF(Y = sleepstudy$Reaction, X = as.data.frame(sleepstudy$Days), 
    random = "(Days|Subject)", data = sleepstudy, initialRandomEffects = 0, 
    ErrorTolerance = 0.01, MaxIterations = 100)

# tmp$forest

# tmp$MixedModel

# tmp$RandomEffects
}
