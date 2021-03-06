% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualization.R
\name{HTOHeatmap}
\alias{HTOHeatmap}
\title{Hashtag oligo heatmap}
\usage{
HTOHeatmap(object, assay = "HTO", classification = paste0(assay,
  "_classification"), global.classification = paste0(assay,
  "_classification.global"), ncells = 5000, singlet.names = NULL)
}
\arguments{
\item{object}{Seurat object. Assumes that the hash tag oligo (HTO) data has been added and normalized, and demultiplexing has been run with HTODemux().}

\item{assay}{Hashtag assay name.}

\item{classification}{The naming for metadata column with classification result from HTODemux().}

\item{global.classification}{The slot for metadata column specifying a cell as singlet/doublet/negative.}

\item{ncells}{Number of cells to plot. Default is to choose 5000 cells by random subsampling, to avoid having to draw exceptionally large heatmaps.}

\item{singlet.names}{Namings for the singlets. Default is to use the same names as HTOs.}
}
\value{
Returns a ggplot2 plot object.
}
\description{
Draws a heatmap of hashtag oligo signals across singlets/doublets/negative cells. Allows for the visualization of HTO demultiplexing results.
}
\examples{
\dontrun{
object <- HTODemux(object)
HTOHeatmap(object)
}

}
\seealso{
\code{\link{HTODemux}}
}
