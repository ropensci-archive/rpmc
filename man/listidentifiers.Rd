\name{listidentifiers}
\alias{listidentifiers}
\title{Retrieve record headers from the PubMed Central repository.}
\usage{
  listidentifiers(from = NULL, until = NULL, set = NULL,
    prefix = "oai_dc", token = NULL, transform = TRUE,
    url = "http://www.pubmedcentral.gov/oai/oai.cgi")
}
\arguments{
  \item{from}{specifies that records returned must have
  been created/update/deleted on or after this date.}

  \item{until}{specifies that records returned must have
  been created/update/deleted on or before this date.}

  \item{set}{specifies the set that returned records must
  belong to.}

  \item{prefix}{The prefix to use, one of: "oa_dc" (Dublin
  Core metadata format), "pmc_fm" (PMC front matter
  metadata format), or "pmc" (full text for open access
  content only)}

  \item{token}{a token previously provided by the server to
  resume a request where it last left off.}

  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for DataCite (leave to default)}
}
\description{
  Retrieve record headers from the PubMed Central
  repository.
}
\examples{
\dontrun{
listidentifiers(from = '2012-07-26')
}
}

