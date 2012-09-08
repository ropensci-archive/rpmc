\name{pmc_getrecord}
\alias{pmc_getrecord}
\title{Retrieve an individual record from the PubMed Central repository.}
\usage{
  pmc_getrecord(id = NULL, transform = TRUE,
    prefix = "oai_dc",
    url = "http://www.pubmedcentral.gov/oai/oai.cgi")
}
\arguments{
  \item{prefix}{The prefix to use, one of: "oa_dc" (Dublin
  Core metadata format), "pmc_fm" (PMC front matter
  metadata format), or "pmc" (full text for open access
  content only)}

  \item{id}{DataCite identifier, e.g., "56225"}

  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for DataCite (leave to default)}
}
\description{
  Retrieve an individual record from the PubMed Central
  repository.
}
\examples{
\dontrun{
out <- pmc_getrecord(152494, T)
out$metadata # get $identifier, $datestamp, $setSpec, or $metadata
oaih_transform(out$metadata) # transform only metadata to a list

# Full text
pmc_getrecord(156895, T, "pmc")
}
}

