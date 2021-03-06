\name{table.Variability}
\alias{table.Variability}
\title{Variability Summary: Statistics and Stylized Facts}
\usage{
table.Variability(R, scale = NA, geometric = TRUE, digits = 4)
}
\arguments{
  \item{R}{an xts, vector, matrix, data frame, timeSeries
  or zoo object of asset returns}

  \item{geometric}{utilize geometric chaining (TRUE) or
  simple/arithmetic chaining (FALSE) to aggregate returns,
  default TRUE}

  \item{scale}{number of periods in a year (daily scale =
  252, monthly scale = 12, quarterly scale = 4)}

  \item{digits}{number of digits to round results to}
}
\description{
Table of Mean absolute difference, Monthly standard
deviation and annualised standard deviation
}
\examples{
data(managers)
table.Variability(managers[,1:8])

require("Hmisc")
result = t(table.Variability(managers[,1:8]))

textplot(format.df(result, na.blank=TRUE, numeric.dollar=FALSE, cdec=c(3,3,1)),
rmar = 0.8, cmar = 2,  max.cex=.9, halign = "center", valign = "top",
row.valign="center", wrap.rownames=20, wrap.colnames=10,
col.rownames=c("red", rep("darkgray",5), rep("orange",2)), mar = c(0,0,3,0)+0.1)
title(main="Portfolio variability")
}
\author{
Matthieu Lestel
}
\references{
Carl Bacon, \emph{Practical portfolio performance
measurement and attribution}, second edition 2008 p.65
}
\seealso{
\code{\link{StdDev.annualized}} \cr
\code{\link{MeanAbsoluteDeviation}}
}
\keyword{distribution}
\keyword{models}
\keyword{multivariate}
\keyword{ts}

