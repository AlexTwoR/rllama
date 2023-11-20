# rllama

`rllama` is an R package designed to access and analyze data from the
DeFiLlama API. This package simplifies the process of fetching and
manipulating DeFiLlama data, making it easier for users to perform
analyses and create visualizations.

[![](https://www.r-pkg.org/badges/version/rllama)](https://www.r-pkg.org/badges/version/rllama)
[![](https://cranlogs.r-pkg.org/badges/rllama)](https://cran.r-project.org/package=rllama)
[![](https://cranlogs.r-pkg.org/badges/grand-total/rllama)](https://cranlogs.r-pkg.org/badges/grand-total/rllama)

## Installation

You can install the development version of `rllama` from GitHub with:

    # install.packages("devtools")
    devtools::install_github("AlexTwoR/rllama")

    ## Downloading GitHub repo AlexTwoR/rllama@HEAD

    ## ── R CMD build ──────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ##      checking for file ‘/private/var/folders/8n/w2sqh3pd6ljfmx107gyl5xwr0000gn/T/RtmpNl4JHN/remotesdedc6dc6ffaa/AlexTwoR-rllama-99dbbb6/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/8n/w2sqh3pd6ljfmx107gyl5xwr0000gn/T/RtmpNl4JHN/remotesdedc6dc6ffaa/AlexTwoR-rllama-99dbbb6/DESCRIPTION’
    ##   ─  preparing ‘rllama’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##    Omitted ‘LazyData’ from DESCRIPTION
    ##   ─  building ‘rllama_0.3.0.tar.gz’
    ##      
    ## 

    ## Installing package into '/Users/alex/Library/R/arm64/4.3/library'
    ## (as 'lib' is unspecified)

Usage

Here is a basic example of how to use rllama to retrieve TVL data:

    library(rllama)

    # Example usage
    # This will fetch and display TVL data
    protocol_tvl = get_defillama_protocol_tvl()
    head( protocol_tvl )

    ##           name symbol        slug         tvl       chain category
    ## 1: Binance CEX      - binance-cex 70056519694 Multi-Chain      CEX
