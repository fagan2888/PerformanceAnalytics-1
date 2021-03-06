\name{CAPM.CML.slope}
\alias{CAPM.CML}
\alias{CAPM.CML.slope}
\alias{CAPM.RiskPremium}
\alias{CAPM.SML.slope}
\alias{CAPM.utils}
\alias{SFM.CML}
\alias{SFM.CML.slope}
\alias{SFM.RiskPremium}
\alias{SFM.SML.slope}
\alias{SFM.utils}
\title{utility functions for single factor (CAPM) CML, SML, and RiskPremium}
\usage{
CAPM.CML.slope(Rb, Rf = 0)

CAPM.CML(Ra, Rb, Rf = 0)

CAPM.RiskPremium(Ra, Rf = 0)

CAPM.SML.slope(Rb, Rf = 0)
}
\arguments{
  \item{Ra}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{Rb}{return vector of the benchmark asset}

  \item{Rf}{risk free rate, in same period as your returns}
}
\description{
The Capital Asset Pricing Model, from which the popular
\code{\link{SharpeRatio}} is derived, is a theory of market
equilibrium. These utility functions provide values for
various measures proposed in the CAPM.
}
\details{
At it's core, the CAPM is a single factor linear model.  In
light of the general ustility and wide use of single factor
model, all functions in the CAPM suite will also be
available with SFM (single factor model) prefixes.

The CAPM provides a justification for passive or index
investing by positing that assets that are not on the
efficient frontier will either rise or lower in price until
they are on the efficient frontier of the market portfolio.

The CAPM Risk Premium on an investment is the measure of
how much the asset's performance differs from the risk free
rate.  Negative Risk Premium generally indicates that the
investment is a bad investment, and the money should be
allocated to the risk free asset or to a different asset
with a higher risk premium.

The Capital Market Line relates the excess expected return
on an efficient market portfolio to it's Risk.  The slope
of the CML is the Sharpe Ratio for the market portfolio.
The Security Market line is constructed by calculating the
line of Risk Premium over \code{\link{CAPM.beta}}.  For the
benchmark asset this will be 1 over the risk premium of the
benchmark asset.  The CML also describes the only path
allowed by the CAPM to a portfolio that outperforms the
efficient frontier: it describes the line of reward/risk
that a leveraged portfolio will occupy.  So, according to
CAPM, no portfolio constructed of the same assets can lie
above the CML.

Probably the most complete criticism of CAPM in actual
practice (as opposed to structural or theory critiques) is
that it posits a market equilibrium, but is most often used
only in a partial equilibrium setting, for example by using
the S\&P 500 as the benchmark asset.  A better method of
using and testing the CAPM would be to use a general
equilibrium model that took global assets from all asset
classes into consideration.

Chapter 7 of Ruppert(2004) gives an extensive overview of
CAPM, its assumptions and deficiencies.

\code{SFM.RiskPremium} is the premium returned to the
investor over the risk free asset

\deqn{\overline{(R_{a}-R_{f})}}{mean(Ra-Rf=0)}

\code{SFM.CML} calculates the expected return of the asset
against the benchmark Capital Market Line

\code{SFM.CML.slope} calculates the slope of the Capital
Market Line for looking at how a particular asset compares
to the CML

\code{SFM.SML.slope} calculates the slope of the Security
Market Line for looking at how a particular asset compares
to the SML created by the benchmark
}
\examples{
data(managers)
CAPM.CML.slope(managers[,"SP500 TR",drop=FALSE], managers[,10,drop=FALSE])
CAPM.CML(managers[,"HAM1",drop=FALSE], managers[,"SP500 TR",drop=FALSE], Rf=0)
CAPM.RiskPremium(managers[,"SP500 TR",drop=FALSE], Rf=0)
CAPM.RiskPremium(managers[,"HAM1",drop=FALSE], Rf=0)
CAPM.SML.slope(managers[,"SP500 TR",drop=FALSE], Rf=0)
# should create plots like in Ruppert 7.1 7.2
}
\author{
Brian G. Peterson
}
\references{
Sharpe, W.F. The Sharpe Ratio,\emph{Journal of Portfolio
Management},Fall 1994, 49-58. \cr Sharpe, W.F. Capital
Asset Prices: A theory of market equilibrium under
conditions of risk. \emph{Journal of finance}, vol 19,
1964, 425-442. \cr Ruppert, David. \emph{Statistics and
Finance, an Introduction}. Springer. 2004. \cr
}
\seealso{
\code{\link{CAPM.beta}} \code{\link{CAPM.alpha}}
\code{\link{SharpeRatio}} \code{\link{InformationRatio}}
\code{\link{TrackingError}} \code{\link{ActivePremium}}
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

