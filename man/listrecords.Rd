\name{listrecords}
\alias{listrecords}
\title{List the records in the PubMed Central metadata repository.}
\usage{
  listrecords(from = NULL, until = NULL, set = NULL,
    prefix = "oai_dc", token = NULL, transform = TRUE,
    url = "http://www.pubmedcentral.gov/oai/oai.cgi")
}
\arguments{
  \item{prefix}{The prefix to use, one of: "oa_dc" (Dublin
  Core metadata format), "pmc_fm" (PMC front matter
  metadata format), or "pmc" (full text for open access
  content only)}

  \item{from}{specifies that records returned must have
  been created/update/deleted on or after this date.}

  \item{until}{specifies that records returned must have
  been created/update/deleted on or before this date.}

  \item{set}{specifies the set that returned records must
  belong to.}

  \item{token}{a token previously provided by the server to
  resume a request where it last left off.}

  \item{transform}{transform metadata to list (TRUE/FALSE)}

  \item{url}{the base url for DataCite (leave to default)}
}
\description{
  List the records in the PubMed Central metadata
  repository.
}
\examples{
\dontrun{
out <- listrecords(from = '2001-03-22', until = '2001-03-22', transform=T)
nrow(out) # number of records
out[3,] # a single record

# Drop deleted records and extract the metadata.
mout <- out[, "metadata"]
mout[1:3] # recors one through three
oaih_transform(mout[[1]]) # convert XML to a list
}
}

