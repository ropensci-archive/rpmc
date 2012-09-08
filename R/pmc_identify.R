#' Learn about the PubMed Central OAI-PMH service.
#'
#' @import OAIHarvester
#' @inheritParams pmc_listmetadataformats
#' @export
#' @examples \dontrun{
#' pmc_identify()
#' }
pmc_identify <- function(transform = TRUE, url = "http://www.pubmedcentral.gov/oai/oai.cgi") 
{ 
  oaih_identify(url, transform = transform)
}