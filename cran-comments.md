## Resubmission
This is a resubmission. In this version I have:

* Include LazyData: true in DESCRIPTION

* included in Sys.setenv(TZ = "Africa/Kampala") .Rprofile

* Updated the test that depended on dynamic data

* Commented out code that used dynamic data in README and vignette

* I have tested the package on GITHUB actions and all past using these OSs
   - {os: macos-latest,   r: 'release'}
   - {os: windows-latest, r: 'release'}
   - {os: ubuntu-latest,   r: 'devel', http-user-agent: 'release'}
   - {os: ubuntu-latest,   r: 'release'}
   - {os: ubuntu-latest,   r: 'oldrel-1'}
          


## R CMD check results
There were no ERRORs, WARNINGs or NOTEs

## Downstream dependencies
There are currently no downstream dependencies for this package
