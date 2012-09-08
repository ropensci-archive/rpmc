#' Retrieve an individual record from the PubMed Central repository.
#' 
#' @import OAIHarvester
#' @inheritParams pmc_listmetadataformats
#' @param prefix The prefix to use, one of: "oa_dc" (Dublin Core metadata format), 
#' 		"pmc_fm" (PMC front matter metadata format), or "pmc" 
#' 		(full text for open access content only)
#' @examples \dontrun{
#' out <- pmc_getrecord(152494, T)
#' out$metadata # get $identifier, $datestamp, $setSpec, or $metadata
#' oaih_transform(out$metadata) # transform only metadata to a list
#' 
#' # Full text
#' pmc_getrecord(156895, T, "pmc")
#' }
#' @export
pmc_getrecord <- function(id = NULL, transform = TRUE, prefix = "oai_dc",
  url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{
  if(!is.null(id) == T) {oaiid <- paste("oai:pubmedcentral.nih.gov:", id, sep="")} else
      {oaiid <- NULL}
	oaih_get_record(
	  url, 
		oaiid, 
		prefix = prefix, 
		transform = transform)
}