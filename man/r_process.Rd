% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r-process.R
\name{r_process}
\alias{r_process}
\title{External R Process}
\description{
An R process that runs in the background. This is an R6 class that
extends the \link[processx:process]{processx::process} class.
}
\section{Usage}{
\preformatted{rp <- r_process$new(options)
rp$get_result()
}

See `\link[processx:process]{processx::process} for the inherited methods.
}

\section{Arguments}{

\itemize{
\item \code{options} A list of options created via \code{\link[=r_process_options]{r_process_options()}}.
}
}

\section{Details}{

\code{r_process$new} creates a new instance. Its \code{options} argument is best
created by the \code{\link[=r_process_options]{r_process_options()}} function.

\code{rp$get_result()} returns the result, an R object, from a finished
background R process. If the process has not finished yet, it throws an
error. (You can use \code{rp$wait()} to wait for the process to finish,
optionally with a timeout.)
}

\examples{
\dontrun{
## List all options and their default values:
r_process_options()

## Start an R process in the background, wait for it, get result
opts <- r_process_options(func = function() 1 + 1)
rp <- r_process$new(opts)
rp$wait()
rp$get_result()
}
}
