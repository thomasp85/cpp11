% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_cpp.R
\name{source_cpp}
\alias{source_cpp}
\alias{cpp_function}
\alias{eval_cpp}
\title{Compile C++ code}
\usage{
source_cpp(file, code = NULL, env = parent.frame(), clean = TRUE, quiet = TRUE)

cpp_function(code, env = parent.frame())

eval_cpp(code)
}
\arguments{
\item{file}{A file containing C++ code to compile}

\item{code}{If non-null, the C++ code to compile}

\item{env}{The R environment where the R wrapping functions should be defined.}

\item{clean}{If \code{TRUE}, cleanup the files after sourcing}

\item{quiet}{If 'TRUE`, do not show compiler output}
}
\description{
\code{cpp_function()} is a helper which makes it easier to compile a single function for use in R.
\code{eval_cpp()} is a helper to evaluate a single expression and return the result.
}
\examples{
\dontrun{
source_cpp(
  code = '#include "cpp11/integers.hpp"

  [[cpp11::export]]
  int num_odd(cpp11::integers x) {
    int total = 0;
    for (int val : x) {
      if ((val \% 2) == 1) {
        ++total;
      }
    }
    return total;
  }
  ')

num_odd(as.integer(c(1:10, 15, 23)))
}
}
