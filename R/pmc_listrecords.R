#' List the records in the PubMed Central metadata repository.
#'
#' @import OAIHarvester
#' @inheritParams pmc_listmetadataformats
#' @param prefix The prefix to use, one of: "oa_dc" (Dublin Core metadata format), 
#' 		"pmc_fm" (PMC front matter metadata format), or "pmc" 
#' 		(full text for open access content only)
#' @examples \dontrun{
#' out <- pmc_listrecords(from = '2001-03-22', until = '2001-03-22', transform=T)
#' nrow(out) # number of records
#' out[3,] # a single record
#' 
#' # Drop deleted records and extract the metadata.
#' mout <- out[, "metadata"]
#' mout[1:3] # recors one through three
#' oaih_transform(mout[[1]]) # convert XML to a list
#' }
#' @export
pmc_listrecords <- function(from = NULL, until = NULL, set = NULL, prefix = 'oai_dc', 
  token = NULL, transform = TRUE,
	url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{
	oaih_list_records(
    url, 
    prefix = prefix,
    from = from,
    until = until,
    set = set,
		transform = transform)
}