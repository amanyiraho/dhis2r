## Resubmission

This is a resubmission. In this version I have:

Updated the package to fail gracefully with an informative message if the resource is not available or has changed and doesn't give a check warning nor error. I have achieved this by making sure; 

  * API call functions print a massage "No internet connection!" if there is no internet connection instead of an error
  
  * All examples run the if the environment is interactive and has internet
  
  * All the tests are skipped on CRAN and are only run if there is an internet connection (Tests are always run during CI using github Actions)
  
  * The vignettes are built using a mock up directory to that they can run without internet connection and when resources are unavailable 


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
