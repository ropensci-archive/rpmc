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
listsets <- function(transform = TRUE,
		url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{ 
	oaih_list_sets(url, transform = transform)
}