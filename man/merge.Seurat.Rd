% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/objects.R
\name{merge.Assay}
\alias{merge.Assay}
\alias{merge.Seurat}
\alias{merge}
\title{Merge Seurat Objects}
\usage{
\method{merge}{Assay}(x = NULL, y = NULL, add.cell.ids = NULL,
  merge.data = TRUE, ...)

\method{merge}{Seurat}(x = NULL, y = NULL, add.cell.ids = NULL,
  merge.data = TRUE, project = "SeuratProject", ...)
}
\arguments{
\item{x}{Object}

\item{y}{Object (or a list of multiple objects)}

\item{add.cell.ids}{A character vector of length(x = c(x, y)). Appends the
corresponding values to the start of each objects' cell names.}

\item{merge.data}{Merge the data slots instead of just merging the counts
(which requires renormalization). This is recommended if the same normalization
approach was applied to all objects.}

\item{...}{Arguments passed to other methods}

\item{project}{Sets the project name for the Seurat object.}
}
\value{
Merged object
}
\description{
Merge two or more objects.
}
\details{
When merging Seurat objects, the merge procedure will merge the Assay level
counts and potentially the data slots (depending on the merge.data parameter).
It will also merge the cell-level meta data that was stored with each object
and preserve the cell identities that were active in the objects pre-merge.
The merge will not preserve reductions, graphs, logged commands, or feature-level metadata
that were present in the original objects.
}
