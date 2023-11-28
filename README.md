# rllama

`rllama` is an R package designed to access and analyze data from the
DeFiLlama API. This package simplifies the process of fetching and
manipulating DeFiLlama data, making it easier for users to perform
analyses and create visualizations.

[![](https://www.r-pkg.org/badges/version/rllama)](https://cran.r-project.org/web/packages/rllama/index.html)
[![](https://cranlogs.r-pkg.org/badges/rllama)](https://cran.r-project.org/package=rllama)
[![](https://cranlogs.r-pkg.org/badges/grand-total/rllama)](https://cranlogs.r-pkg.org/badges/grand-total/rllama)

## Installation

You can install the development version of `rllama` from GitHub with:

    # install.packages("devtools")
    devtools::install_github("AlexTwoR/rllama")

    ## Downloading GitHub repo AlexTwoR/rllama@HEAD

    ## ── R CMD build ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
    ##      checking for file ‘/private/var/folders/8n/w2sqh3pd6ljfmx107gyl5xwr0000gn/T/RtmpSQ2ubC/remotes919d3969a3d1/AlexTwoR-rllama-764a67a/DESCRIPTION’ ...  ✔  checking for file ‘/private/var/folders/8n/w2sqh3pd6ljfmx107gyl5xwr0000gn/T/RtmpSQ2ubC/remotes919d3969a3d1/AlexTwoR-rllama-764a67a/DESCRIPTION’
    ##   ─  preparing ‘rllama’:
    ##      checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##    Omitted ‘LazyData’ from DESCRIPTION
    ##   ─  building ‘rllama_0.3.1.tar.gz’
    ##      
    ## 

    ## Installing package into '/Users/alex/Library/R/arm64/4.3/library'
    ## (as 'lib' is unspecified)

Usage

Here is a basic example of how to use rllama to retrieve TVL data:

    library( rllama )

    # Example usage
    # This will fetch and display TVL data
    protocol_tvl = get_defillama_protocol_tvl()
    head( protocol_tvl )

    ##                        name symbol                     slug         tvl       chain       category
    ## 1:                     Lido    LDO                     lido 18809394757 Multi-Chain Liquid Staking
    ## 2:                     WBTC      -                     wbtc  5972843354 Multi-Chain         Bridge
    ## 3:                 JustLend    JST                 justlend  5927403156        Tron        Lending
    ## 4: Polygon Bridge & Staking  MATIC polygon-bridge-&-staking  5810058082     Polygon          Chain
    ## 5:          Arbitrum Bridge    ARB          arbitrum-bridge  5598512290    Ethereum          Chain
    ## 6:                 MakerDAO    MKR                 makerdao  5498271437    Ethereum            CDP
