#' TVL Data from API
#'
#' This function retrieves Total Value Locked (TVL) data for various protocols
#' from a specified API and formats it into a data.table for analysis.
#'
#' @return A data.table containing TVL data with columns: symbol, tvl, slug, name, chain, and category.
#' @export
#' @examples
#' tvl = get_protocol_tvl()

get_protocol_tvl = function() {

  # API request
  request = 'https://api.llama.fi/protocols'
  res = GET(request)
  c = content(res, type = 'application/json')

  # Using lapply to create a list of data.table objects
  tvl_protocols = lapply(c, function(x) {
    data.table(name     = x$name,
               symbol   = x$symbol,
               slug     = x$slug,
               tvl      = x$tvl,
               chain    = x$chain,
               category = x$category)
  })

  # Combining the list into a single data.table
  tvl_protocols = rbindlist(tvl_protocols)[ order( -tvl ) ]

  tvl_protocols[]

}
