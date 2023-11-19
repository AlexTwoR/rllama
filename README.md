# rllama

`rllama` is an R package designed to access and analyze data from the
DeFiLlama API. This package simplifies the process of fetching and
manipulating DeFiLlama data, making it easier for users to perform
analyses and create visualizations.

[![](https://cranlogs.r-pkg.org/badges/rllama)](https://cran.r-project.org/package=rllama)

## Installation

You can install the development version of `rllama` from GitHub with:

    # install.packages("devtools")
    devtools::install_github("AlexTwoR/rllama")

    ## Skipping install of 'rllama' from a github remote, the SHA1 (557d5bbc) has not changed since last install.
    ##   Use `force = TRUE` to force installation

Usage

Here is a basic example of how to use rllama to retrieve TVL data:

    library(rllama)

    # Example usage
    # This will fetch and display TVL data
    protocol_tvl = get_defillama_protocol_tvl()
    head( protocol_tvl )

    ##           name symbol        slug         tvl       chain category
    ## 1: Binance CEX      - binance-cex 69118870734 Multi-Chain      CEX
