\name{listmetadataformats}
\alias{listmetadataformats}
\title{List available metadata formats that the PubMed Central repository can disseminate.}
\usage{
  listmetadataformats(id = NULL, transform = TRUE,
    url = "http://www.pubmedcentral.gov/oai/oai.cgi")
}
\arguments{
  \item{id}{DataCite identifier, e.g., "56225"}

  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for DataCite (leave to default)}
}
\description{
  List available metadata formats that the PubMed Central
  repository can disseminate.
}
\examples{
\dontrun{
listmetadataformats() # list all possible metadata formats for PMC
listmetadataformats("56225") # possible metadata formats for specific identifier
}
}

