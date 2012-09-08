#' List available metadata formats that the PubMed Central repository can disseminate.
#' 
#' @import OAIHarvester
#' @param id DataCite identifier, e.g., "56225"
#' @param transform transform metadata to list (TRUE/FALSE)
#' @param url the base url for DataCite (leave to default)
#' @export
#' @examples \dontrun{
#' pmc_listmetadataformats() # list all possible metadata formats for PMC
#' pmc_listmetadataformats("56225") # possible metadata formats for specific identifier
#' }
pmc_listmetadataformats <- function(id = NULL, transform = TRUE, 
		url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{
  if(!is.null(id) == T) {oaiid <- paste("oai:pubmedcentral.nih.gov:", id, sep="")} else
     {oaiid <- NULL}
	oaih_list_metadata_formats(
	  url, 
		oaiid, 
		transform = transform)
}