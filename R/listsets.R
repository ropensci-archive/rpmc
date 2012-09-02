#' Retrieve the set structure of DataCite, useful for selective harvesting.
#' 
#' @import OAIHarvester
#' @inheritParams listmetadataformats
#' @examples \dontrun{
#' out <- listsets()
#' nrow(out); head(out)
#' out[nrow(out),]
#' }
#' @export
listsets <- function(url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{ 
	out <- oaih_list_sets(url, transform = FALSE)
	data.frame(
		setSpec = sapply(xpathApply(out, "//setSpec"), xmlValue),
		setName = sapply(xpathApply(out, "//setName"), xmlValue)
	)
}