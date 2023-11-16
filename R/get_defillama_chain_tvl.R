#' Chain TVL Data
#'
#' This function retrieves Total Value Locked (TVL) data for various chains
#' from a specified API and formats it into a data.table for analysis.
#'
#' @return A data.table containing the TVL data with columns: name, symbol, tvl, gecko_id, cmcId, and chainId.
#' The data is sorted by TVL in descending order.
#' @export
#' @examples
#' chain_tvl = get_defillama_chain_tvl()
#' head( chain_tvl )

get_defillama_chain_tvl = function() {

  # API request
  request = paste0(  'https://api.llama.fi/chains' )
  res = httr::GET( request )
  content = httr::content( res, type = 'application/json' )

  # Convert the list to a data.table,
  tvl_chains  = rbindlist( content, fill = TRUE )[ order( -"tvl" ) ]

  # Reordering and renaming
  setcolorder( tvl_chains, c( "name", "tokenSymbol", "tvl", "gecko_id", "cmcId", "chainId" ) )
  setnames( tvl_chains, c( "tokenSymbol" ), c( "symbol" ) )

  tvl_chains[]

}
