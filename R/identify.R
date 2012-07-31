#' Learn about the PubMed Central OAI-PMH service.
#'
#' @import OAIHarvester
#' @inheritParams listmetadataformats
#' @export
#' @examples \dontrun{
#' identify()
#' }
identify <- function(transform = TRUE, url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{ 
  oaih_identify(url, transform = transform)
}