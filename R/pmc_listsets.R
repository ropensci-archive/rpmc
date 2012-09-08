#' Retrieve the set structure of DataCite, useful for selective harvesting.
#' 
#' @import OAIHarvester
#' @inheritParams pmc_listmetadataformats
#' @examples \dontrun{
#' out <- pmc_listsets()
#' nrow(out); head(out)
#' out[nrow(out),]
#' }
#' @export
pmc_listsets <- function(url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{ 
	out <- oaih_list_sets(url, transform = FALSE)
	data.frame(
		setSpec = sapply(xpathApply(out, "//setSpec"), xmlValue),
		setName = sapply(xpathApply(out, "//setName"), xmlValue)
	)
}