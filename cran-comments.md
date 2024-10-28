## Resubmission

This is a resubmission of a currently Archived on 2024-06-01 for policy violation. On Internet access.

I crossed checked the CRAN Package Check Results Last updated on 2024-06-01 and the failures were do to change in the testing Server host link from "https://play.dhis2.org/" to "https://play.im.dhis2.org/stable-2-40-5"

* I have updated all the tests and vignettes.

* I wasn't able to fix this in time due to family responsibilities at the moment.

* I have tested the package on GITHUB actions and all past using these OSs
   - {os: macos-latest,   r: 'release'}
   - {os: windows-latest, r: 'release'}
   - {os: ubuntu-latest,   r: 'devel', http-user-agent: 'release'}
   - {os: ubuntu-latest,   r: 'release'}
   - {os: ubuntu-latest,   r: 'oldrel-1'}
          
## R CMD check results

0 errors | 0 warnings | 0 notes

## Downstream dependencies

There are currently no downstream dependencies for this package
