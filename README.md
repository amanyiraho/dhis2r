
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dhis2r <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/amanyiraho/dhis2r/workflows/R-CMD-check/badge.svg)](https://github.com/amanyiraho/dhis2r/actions)
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

DHIS2 is now the world’s most extensive HMIS system and is used in more
than 72 countries worldwide.

## Installation

You can install the development version of dhis2r from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("amanyiraho/dhis2r")
```

## Example

This is a basic example which shows you how to solve a get data from a
Dhis2 instance.

``` r
#library(dhis2r)
## basic example code
```

Please note that the dhis2r project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
