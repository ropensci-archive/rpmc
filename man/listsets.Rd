\name{listsets}
\alias{listsets}
\title{Retrieve the set structure of DataCite, useful for selective harvesting.}
\usage{
  listsets(url = "http://www.pubmedcentral.gov/oai/oai.cgi")
}
\arguments{
  \item{url}{the base url for DataCite (leave to default)}
}
\description{
  Retrieve the set structure of DataCite, useful for
  selective harvesting.
}
\examples{
\dontrun{
out <- listsets()
nrow(out); head(out)
out[nrow(out),]
}
}

