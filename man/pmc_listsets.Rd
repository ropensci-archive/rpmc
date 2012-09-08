\name{pmc_listsets}
\alias{pmc_listsets}
\title{Retrieve the set structure of DataCite, useful for selective harvesting.}
\usage{
  pmc_listsets(url = "http://www.pubmedcentral.gov/oai/oai.cgi")
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
out <- pmc_listsets()
nrow(out); head(out)
out[nrow(out),]
}
}

