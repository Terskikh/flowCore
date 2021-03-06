\name{write.FCS}
\alias{write.FCS}
\title{Write an FCS file}

\description{Write FCS file from a flowFrame}

\usage{
   write.FCS(x, filename, what="numeric", delimiter = "\\\\")
}

\arguments{
  
  \item{x}{ A \code{\link[flowCore:flowFrame-class]{flowFrame}}.}

  \item{filename}{A character scalar giving the output file name. }
  
  \item{what}{A character scalar defining the output data type. One in
    \code{integer}, \code{numeric}, \code{double}. Note that forcing the
    data type to \code{integer} may result in considerable loss of
    precision if the data has been transformed. We recommend using the
    default data type unless disc space is an issue. }
    
  \item{delimiter}{a single character to separate the FCS keyword/value pairs. Default is back-slash: "\\"}
}

\details{
  
  The function \code{write.FCS} creates FCS 3.0 standard file from an
  object of class \code{flowFrame}.

  For specifications of FCS 3.0 see \url{http://www.isac-net.org} and
  the file \url{../doc/fcs3.html} in the \code{doc} directory of the
  package.
  
}

\value{
  
  A character of the file name.
  
}

\author{F. Hahne}

\seealso{\code{link[flowCore]{write.flowSet}}}

\examples{
## a sample file
inFile <- system.file("extdata", "0877408774.B08", package="flowCore")
foo <- read.FCS(inFile, transform=FALSE)
outFile <- file.path(tempdir(), "foo.fcs")

## now write out into a file
write.FCS(foo, outFile)
bar <- read.FCS(outFile, transform=FALSE)
all(exprs(foo) == exprs(bar))

}

\keyword{IO}

