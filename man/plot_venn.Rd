% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fct_05_deg.R
\name{plot_venn}
\alias{plot_venn}
\title{Create a venn diagram plot}
\usage{
plot_venn(results)
}
\arguments{
\item{limma}{limma Returned list of results from the limma_value
function}

\item{up_down_regulated}{Split the comparisons into either
up or down regulated}

\item{select_comparisons_venn}{The comparisons to plot on the
venn diagram}
}
\value{
A formatted venn diagram plot of the selected comparisons.
}
\description{
Plot a venn diagram that illustrates the number of significantly
expressed genes that overlap for multiple comparisons.
}
