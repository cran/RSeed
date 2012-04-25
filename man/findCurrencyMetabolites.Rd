\name{findCurrencyMetabolites}
\alias{findCurrencyMetabolites,modelorg-method}
\alias{findCurrencyMetabolites}
\title{
	Find currency metabolites
}
\description{
	Find currency metabolites in a metabolic network by the number of reactions using a metabolite.
}
\usage{
findCurrencyMetabolites(object, ...)
}
\arguments{
  \item{object}{
		\code{object} 'modelorg' object
}
  \item{\dots}{
		\code{cutoff} lower cutoff (default 20).
}
}
\details{
	Identification is performed as follows: From the binary S-matrix is calculated in how many reactions a metabolite participates. If it participates in more than 'cutoff' reactions, it is returned as currency metabolited.
}
\value{
	character vector with the metabolite IDs of the currency metabolites.
}

\references{Master Thesis\cr by Claus Jonathan Fritzemeier\cr at Heinrich-Heine-Universitaet Duesseldorf,\cr Department of Bioinformatics\cr in 2012\cr \cr \cr Borenstein et. al. 2008}\author{Claus Jonathan Fritzemeier\cr <clausjonathan.fritzemeier@uni-duesseldorf.de>}


\seealso{
	\code{\linkS4class{modelorg}}
	\code{\linkS4class{RSeed}}
}
\examples{
	data(Ec_core)
	
	findCurrencyMetabolites(Ec_core) # cutoff=20
	findCurrencyMetabolites(Ec_core, 10)
}
