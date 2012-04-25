\name{RSeed-class}
\Rdversion{1.1}
\docType{class}
\alias{RSeed}
\alias{RSeed-class}
\alias{buildGraph,RSeed-method}
\alias{confidenceLevel,RSeed-method}
\alias{connectedComponentCutOff,RSeed-method}
\alias{connectedComponentCutOff<-,RSeed-method}
\alias{currencyMetabolites,RSeed-method}
\alias{currencyMetabolites<-,RSeed-method}
\alias{getSourceMetabolites,RSeed-method}
\alias{graph_network,RSeed-method}
\alias{graph_network<-,RSeed-method}
\alias{graph_scc,RSeed-method}
\alias{graph_scc<-,RSeed-method}
\alias{initialize,RSeed-method}
\alias{list_sc,RSeed-method}
\alias{list_sc<-,RSeed-method}
\alias{makeExperiment,RSeed-method}
\alias{model_changes,RSeed-method}
\alias{model_changes<-,RSeed-method}
\alias{model_edited,RSeed-method}
\alias{model_edited<-,RSeed-method}
\alias{model_original,RSeed-method}
\alias{model_original<-,RSeed-method}
\alias{plot,RSeed,missing-method}
\alias{scc_sizes,RSeed-method}
\alias{scc_sizes<-,RSeed-method}
\alias{scc,RSeed-method}
\alias{scc<-,RSeed-method}
\alias{sourceCompounds,RSeed-method}
\alias{show,RSeed-method}
\alias{buildGraph}
\alias{combined_nodes}
\alias{combined_nodes<-}
\alias{confidenceLevel}
\alias{connectedComponentCutOff}
\alias{connectedComponentCutOff<-}
\alias{currencyMetabolites}
\alias{currencyMetabolites<-}
\alias{getSourceMetabolites}
\alias{graph_network}
\alias{graph_network<-}
\alias{graph_scc}
\alias{graph_scc<-}
\alias{initialize}
\alias{list_sc}
\alias{list_sc<-}
\alias{makeExperiment}
\alias{model_changes}
\alias{model_changes<-}
\alias{model_edited}
\alias{model_edited<-}
\alias{model_original}
\alias{model_original<-}
\alias{plot,RSeed,missing-method}
\alias{scc_sizes}
\alias{scc_sizes<-}
\alias{scc}
\alias{scc<-}
\alias{sourceCompounds}
\alias{show}

\title{Class "RSeed"}
\description{
	Datastructure to perform Borenstein algorithm and save results.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("RSeed", model, connectedComponentCutOff, currencyMetabolites)}.
This is the startup, where the basic parameters are set. They can also be set later.
}
\section{Slots}{
	note: this class does only have one slot: an environment. to access data, the usere has to use the methods supplied.
  \describe{
    \item{\code{env}:}{Object of class \code{"environment"}}
  }
}
\section{Methods}{
  \describe{
    \item{buildGraph}{\code{signature(rs = "RSeed")}: 
    		Builds a graph from the stoichiometric matrix. In this process is checked weather the graph is connected. Unconnected parts are removed from the graph, if they are smaller than 'connectedComponentCutOff'. If the parts are greater, there will be an error.}
    \item{combined_nodes}{\code{signature(rs = "RSeed")}:
    	Names of the nodes, which combine metabolites.
    }
    \item{combined_nodes<-}{\code{signature(rs = "RSeed")}: 
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{confidenceLevel}{\code{signature(rs = "RSeed")}: 
    	Return a confidence level for every seed compound as defined in the original paper. The threshold is 0.2.
    }
    \item{connectedComponentCutOff}{\code{signature(rs = "RSeed")}:
    	Return the cut off, until which size it is allowed to remove unconnected components from the graph. Default value is 10.
    }
    \item{connectedComponentCutOff<-}{\code{signature(rs = "RSeed")}: 
    	Set this Value.
    }
    \item{currencyMetabolites}{\code{signature(rs = "RSeed")}:
    	metabolite IDs, which should be treated as currency metabolites and therefor be removed from the network. If this value is NULL, nothing is removed.
    }
    \item{currencyMetabolites<-}{\code{signature(rs = "RSeed")}:
    	Sets this slot. The replace Value has to be a character vector. The return value from 'findCurrencyMetabolites' is suitable.
    }
    \item{getSourceMetabolites}{\code{signature(rs = "RSeed")}:
    	Returns a list, with the metabolite IDs of the as essential identified metabolites. Each list entry represents a source compound.
    }
    \item{graph_network}{\code{signature(rs = "RSeed")}:
    	Graph representation of the network.
    }
    \item{graph_network<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{graph_scc}{\code{signature(rs = "RSeed")}:
    	Graph representation of the network with the nodes, which belong in one scc, aggregated to one node.
    }
    \item{graph_scc<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{initialize}{\code{signature(.Object = "RSeed")}:
    	General initialize method. Automatically called from 'new'.
    }
    \item{list_sc}{\code{signature(rs = "RSeed")}:
    	Return node names of source compounds.
    }
    \item{list_sc<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{makeExperiment}{\code{signature(rs = "RSeed")}:
    	Performs the whole analysis. The result is stored in the object and in addition to this a reference is returned, too.
    }
    \item{model_changes}{\code{signature(rs = "RSeed")}:
    	Returns the names of removed metabolites and reactions. These metabolites were either removed because they had no connection to the biggest part in the graph, or because they were given as source metabolites. Reactions are removed if all participating metabolites were removed.
    }
    \item{model_changes<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{model_edited}{\code{signature(rs = "RSeed")}:
    	The 'modelorg' after removing metabolites and reactions.
    }
    \item{model_edited<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{model_original}{\code{signature(rs = "RSeed")}:
    	The 'modelorg' from the beginning.
    }
    \item{model_original<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{plot}{\code{signature(x = "RSeed", y = "missing")}:
    	Plots the graph_scc. Rgraphviz is needed.
    }
    \item{scc_sizes}{\code{signature(rs = "RSeed")}:
    	Sizes of the SCCs.
    }
    \item{scc_sizes<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{scc}{\code{signature(rs = "RSeed")}:
    	Returns a named list, which represents the aggregated nodes for every SCC (strongly connected component).
    }
    \item{scc<-}{\code{signature(rs = "RSeed")}:
    	Setter method for this slot. This should not used by the user, until u really know, what ur doing!
    }
    \item{sourceCompounds}{\code{signature(rs = "RSeed")}:
    	Aggregates metabolites from the same SCC into a common node.
    }
    \item{show}{\code{signature(object = "RSeed")}:
    	Prints a short summary about the Object. (Called from generic 'print')
    }
	 }
}
\references{Master Thesis\cr by Claus Jonathan Fritzemeier\cr at Heinrich-Heine-Universitaet Duesseldorf,\cr Department of Bioinformatics\cr in 2012\cr \cr \cr Borenstein et. al. 2008}\author{Claus Jonathan Fritzemeier\cr <clausjonathan.fritzemeier@uni-duesseldorf.de>}

\note{
	Most slots of this object are automatically set by the algorithm and contain calculated results. So there is low sence in setting them by ur own.\cr
	\cr
	Nodenames are chosen as follows: 'n' + the number of the metabolite. So n4 would mean, that met_id(model)[4] is the represented metabolite.
}

\seealso{
	\code{\link{findCurrencyMetabolites}},
	\code{\linkS4class{modelorg}}
}
\examples{
	data(Ec_core)
	ec <- new("RSeed", Ec_core)
	
	# run the experiment
	# calls of
	# buildGraph(ec)
	# sourceCompounds(ec)
	# would do the same in two steps.
	makeExperiment(ec)
	
	# look which nodes aggregate
	scc(ec)
	
	# look at source metabolites
	# (every list entry is a source compound)
	getSourceMetabolites(ec)
	
	# plot the graph
	plot(ec)
}
\keyword{classes}
