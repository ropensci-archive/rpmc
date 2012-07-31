#' Retrieve record headers from the PubMed Central repository.
#' 
#' @import OAIHarvester
#' @param from specifies that records returned must have been created/update/deleted 
#'     on or after this date.
#' @param until specifies that records returned must have been created/update/deleted 
#'     on or before this date.
#' @param set specifies the set that returned records must belong to.
#' @param prefix The prefix to use, one of: "oa_dc" (Dublin Core metadata format), 
#' 		"pmc_fm" (PMC front matter metadata format), or "pmc" 
#' 		(full text for open access content only)
#' @param token a token previously provided by the server to resume a request
#'     where it last left off.
#' @inheritParams listmetadataformats
#' @export
#' @examples \dontrun{
#' listidentifiers(from = '2012-07-26')
#' }
listidentifiers <- function(from = NULL, until = NULL, set = NULL, 
  prefix = 'oai_dc', token = NULL, transform = TRUE,
	url = "http://www.pubmedcentral.gov/oai/oai.cgi")
{
  oaih_list_identifiers(
    url, 
    prefix = prefix,
    from = from,
    until = until,
    set = set,
    transform = transform)
}