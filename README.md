
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dhis2r <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/amanyiraho/dhis2r/workflows/R-CMD-check/badge.svg)](https://github.com/amanyiraho/dhis2r/actions)
[![Codecov test
coverage](https://codecov.io/gh/amanyiraho/dhis2r/branch/master/graph/badge.svg)](https://app.codecov.io/gh/amanyiraho/dhis2r?branch=master)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
<!-- badges: end -->

## Overview

**dhis2r** is an R client for the DHIS2 web API.

Pull data from a DHIS2 instance into R without the hassle of logging
into the DHIS2 user interface every day, week, month, quarter, or year
to download the same data or make the same routine data analysis steps
based on fixed or relative periods.

In short, make the routine data visualizations, reports, and dashboards
reproducible to save time and reduce possible errors, with dhis2r and
the rich r package universal and tools like tidyverse, Rmarkdown,
Quarto, Shiny, etc.

### Motivation for this package

[DHIS2](https://dhis2.org/) is an open-source, web-based Health
Management Information System (HMIS), and currently being adopted in the
education sector as the Education Management Information System (EMIS)
several countries.

More than 73 countries worldwide use DHIS2 for collecting and analyzing
health data. 2.4 billion people (30% of the world’s population) live in
countries where DHIS2 is used. DHIS2 is offered free of charge as a
global public good.(source: <https://dhis2.org/>)

## Installation

You can install the development version of dhis2r from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("amanyiraho/dhis2r")
```

## Examples

This is a basic example which shows you how to solve a get data from a
Dhis2 instance.

#### Connect to DHIS2 instance

``` r
library(dhis2r)
dhis2_play_connection <- Dhis2r$new(base_url = "https://play.dhis2.org/", 
                                    username = "admin", 
                                    password = "district",
                                    api_version = "2.39.0.1",
                                    api_version_position = "before")
```

### Getting metadata

Getting metadata about data Elements

``` r
dhis2_play_connection$get_metadata(endpoint = "dataElements")
#> # A tibble: 1,036 × 2
#>    name                                      id         
#>    <chr>                                     <chr>      
#>  1 Accute Flaccid Paralysis (Deaths < 5 yrs) FTRrcoaog83
#>  2 Acute Flaccid Paralysis (AFP) follow-up   P3jJH5Tu5VC
#>  3 Acute Flaccid Paralysis (AFP) new         FQ2o8UBlcrS
#>  4 Acute Flaccid Paralysis (AFP) referrals   M62VHgYT2n0
#>  5 Additional medication                     WO8yRIZb7nb
#>  6 Additional notes related to facility      uF1DLnZNlWe
#>  7 Admission Date                            eMyVanycQSC
#>  8 Age in years                              qrur9Dvnyt5
#>  9 Age of LLINs                              JuTpJ2Ywq5b
#> 10 Albendazole given at ANC (2nd trimester)  hCVSHjcml9g
#> # … with 1,026 more rows
```

Getting metadata about organisation Units

``` r

dhis2_play_connection$get_metadata(endpoint = "organisationUnits",fields =  c("name","id", "level"))
#> # A tibble: 1,332 × 3
#>    name                      id          level
#>    <chr>                     <chr>       <int>
#>  1 Adonkia CHP               Rp268JB6Ne4     4
#>  2 Afro Arab Clinic          cDw53Ej8rju     4
#>  3 Agape CHP                 GvFqTavdpGE     4
#>  4 Ahamadyya Mission Cl      plnHVbJR6p4     4
#>  5 Ahmadiyya Muslim Hospital BV4IomHvri4     4
#>  6 Air Port Centre, Lungi    qjboFI0irVu     4
#>  7 Alkalia CHP               dWOAzMcK2Wt     4
#>  8 Allen Town Health Post    kbGqmM6ZWWV     4
#>  9 Approved School CHP       eoYV2p74eVz     4
#> 10 Arab Clinic               nq7F0t1Pz6t     4
#> # … with 1,322 more rows
```

### Getting analytics data

``` r
dhis2_play_connection$get_analytics(analytic = "FTRrcoaog83", #Accute Flaccid Paralysis (Deaths < 5 yrs),
                                    org_unit = "ImspTQPwCqd", #Sierra Leone (National level)
                                    period = "LAST_12_MONTHS",
                                    output_scheme = "NAME"
                                                 )
#> # A tibble: 8 × 4
#>   analytic                                  org_unit     period         value
#>   <chr>                                     <chr>        <chr>          <chr>
#> 1 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone February 2022  61   
#> 2 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone December 2022  31   
#> 3 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone January 2022   23   
#> 4 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone November 2022  1    
#> 5 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone October 2022   3    
#> 6 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone September 2022 101  
#> 7 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone August 2022    254  
#> 8 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone March 2022     1
```

Please note that the dhis2r project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
