# rllama

`rllama` is an R package designed to access and analyze data from the
DeFiLlama API. This package simplifies the process of fetching and
manipulating DeFiLlama data, making it easier for users to perform
analyses and create visualizations.

## Installation

You can install the development version of `rllama` from GitHub with:

    # install.packages("devtools")
    devtools::install_github("AlexTwoR/rllama")

    ## Skipping install of 'rllama' from a github remote, the SHA1 (f591a4e1) has not changed since last install.
    ##   Use `force = TRUE` to force installation

Usage

Here is a basic example of how to use rllama to retrieve TVL data:

    library(rllama)

    # Example usage
    # This will fetch and display TVL data
    protocol_tvl = get_defillama_protocol_tvl()
    head( protocol_tvl )

    ##                        name symbol                     slug         tvl       chain       category
    ## 1:              Binance CEX      -              binance-cex 70729509563 Multi-Chain            CEX
    ## 2:                     Lido    LDO                     lido 18505458843 Multi-Chain Liquid Staking
    ## 3:                 Bitfinex      -                 bitfinex 12220230657 Multi-Chain            CEX
    ## 4:                      OKX      -                      okx 12116460696 Multi-Chain            CEX
    ## 5:                Robinhood      -                robinhood  7855055233 Multi-Chain            CEX
    ## 6: Polygon Bridge & Staking  MATIC polygon-bridge-&-staking  6689650424     Polygon          Chain
