
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
into the DHIS2 user interface periodically (every day, week, month,
quarter, or year) to download the same data or make the same routine
data analysis steps based on fixed or relative periods

***In short, dhis2r will save you time in the future***, especially if
you do routine reporting like immunisation programs.

### Motivation for this package

[DHIS2](https://dhis2.org/) is an open-source, web-based Health
Management Information System (HMIS), and currently being adopted in the
education sector as the Education Management Information System (EMIS)
in several countries.

More than 73 countries worldwide use DHIS2 for collecting and analyzing
health data. 2.4 billion people (30% of the world’s population) live in
countries where DHIS2 is used. (source: <https://dhis2.org/>)

With the increasing number of data managers/analysts downloading data
from dhis2 instances to make **routine period** reports, data
visualisation and dashboards, this R package can make it much easier to
pull the required data in one click and much faster.

There are over 2 million users of R, and some of them periodically
analyse data from DHIS2, like me; and support health programs which
affect over the 2.4 billion people.

#### Some of the scenarios this R package can change for data managers :

- During routine periodic (monthly, quarterly, yearly) reporting, you
  login into a DHIS2 instance, make several clicks to choose the period,
  organisation unit and indicator and then download data. If you have
  made an error yet closed the browser tab, you have to do the same task
  repeatedly. On top of that, you must also go through the same hassle
  the next month, quarter and year.

- Sometimes you have several data requests, yet only one variable
  changes and you have to respond to them with limited time.

- Sometimes, you need to change browsers or call a colleague to download
  data on your behalf.

- Most reports after an immunisation campaign are similar, i.e. with
  identical data visualisations and conclusions on whether the campaign
  was successful. The only thing that changes is the data.

*Why do you have to carry out the same data download and data analysis
steps, periodically?*

#### How this package solves most of the above issues.

- **dhis2r** package can automate most of the steps to download data
  from a DHIS2 instance, and you can get the data with just one click
  since all the steps are written in terms of code.

- **dhis2r** opens up opportunities to automate data requests, periodic
  reports and dashboards with other technologies.

- If a data manager has made an error by choosing the wrong period, they
  need to change one character string and rerun the report.

## Installation

You can install the development version of dhis2r from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("amanyiraho/dhis2r")
```

## Examples on how to use this package

This is a basic example which shows you how to a get data from a Dhis2
instance.

#### Connect to DHIS2 instance

Using your password and username login in the DHIS instance

``` r
library(dhis2r)
dhis2_play_connection <- Dhis2r$new(base_url = "https://play.dhis2.org/", 
                                    username = "admin", 
                                    password = "district",
                                    api_version = "2.39.0.1",
                                    api_version_position = "before")
```

### Getting metadata

Get metadata using the above created connect

You can start with with metadata availabe on that DHIS2 instance

``` r
dhis2_play_connection$get_metadata(endpoint = "dataElements")
#> # A tibble: 1,046 × 2
#>    name                                        id         
#>    <chr>                                       <chr>      
#>  1 "Accute Flaccid Paralysis (Deaths < 5 yrs)" FTRrcoaog83
#>  2 "Actiontracker_Action status"               f8JYVWLC7rE
#>  3 "Actiontracker_Description"                 GsbZkewUna5
#>  4 "Actiontracker_Method"                      W50aguV39tU
#>  5 "Actiontracker_Remarks / comments"          FnengvwgsQv
#>  6 "Actiontracker_Review Date"                 nodiP54ocf5
#>  7 "Actiontracker_Solution "                   upT2cOT6UfJ
#>  8 "Actiontracker_Solution To Action Linkage"  Y4CIGFwWYJD
#>  9 "Actiontracker_Solution To Gap Linkage"     kBkyDytdOmC
#> 10 "Actiontracker_Title"                       JbMaVyglSit
#> # … with 1,036 more rows
```

You also get metadata about organisation Units

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

Analytics data can include data from indicators, dataElements, program
indicators, etc which returns the reported values

``` r
dhis2_play_connection$get_analytics(analytic = "FTRrcoaog83", #Accute Flaccid Paralysis (Deaths < 5 yrs),
                                    org_unit = "ImspTQPwCqd", #Sierra Leone (National level)
                                    period = "LAST_12_MONTHS",
                                    output_scheme = "NAME"
                                                 )
#> # A tibble: 2 × 4
#>   analytic                                  org_unit     period        value
#>   <fct>                                     <fct>        <chr>         <dbl>
#> 1 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone February 2022    34
#> 2 Accute Flaccid Paralysis (Deaths < 5 yrs) Sierra Leone January 2022     12
```

###### You can do way more with dhis2r, refer to the acticles where I will be posting demos and different use cases.

Please note that the dhis2r project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
