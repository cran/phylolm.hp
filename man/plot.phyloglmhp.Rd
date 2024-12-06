% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.phylolmhp.r
\name{plot.phyloglmhp}
\alias{plot.phyloglmhp}
\title{Plot for a \code{\link{phyloglm.hp}} object}
\usage{
\method{plot}{phyloglmhp}(x, plot.perc = FALSE, commonality = FALSE, color = NULL, dig = 4, ...)
}
\arguments{
\item{x}{A \code{\link{phyloglm.hp}} object.}

\item{plot.perc}{Logical;if TRUE, the bar plot (based on ggplot2 package) of the percentage to individual effects of variables and phylogenetic signal towards total explained variation, the default is FALSE to show plot with original individual effects.}

\item{commonality}{Logical; If TRUE, the result of commonality analysis is shown, the default is FALSE.}

\item{color}{Color of variables.}

\item{dig}{Integer; number of decimal places in Venn diagram.}

\item{...}{unused}
}
\value{
a ggplot object
}
\description{
Plot for a \code{\link{phyloglm.hp}} object
}
\examples{
library(phylolm)
library(rr2)
set.seed(123456)
tre <- rtree(50)
x1 <- rTrait(n=1, phy=tre)  
x2 <- rTrait(n=1, phy=tre)
X <- cbind(rep(1, 50), x1, x2)
y <- rbinTrait(n=1, phy=tre, beta=c(-1, 0.8, 0.9), alpha=1, X=X)
dat <- data.frame(trait01=y, predictor1=x1, predictor2=x2)
fit <- phyloglm(trait01 ~ predictor1 + predictor2, phy=tre, data=dat)
plot(phyloglm.hp(fit,commonality=TRUE))
plot(phyloglm.hp(fit,commonality=TRUE),commonality=TRUE)
}
\author{
{Jiangshan Lai} \email{lai@njfu.edu.cn}
}
