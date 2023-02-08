## code to prepare `package_setup` dataset goes here

library(devtools)
library(usethis)
library(desc)

# Remove default DESC
unlink("DESCRIPTION")
# Create and clean desc
my_desc <- description$new("!new")

# Set your package name
my_desc$set("Package", "dhis2r")

#Set your name
my_desc$set("Authors@R", "c( person('Robinson', 'Amanyiraho', email = 'amanyiraho@gmail.com',
            role = c('cre', 'aut', 'cph'), comment = c(ORCID = '0000-0002-7747-1367')))")

# Remove some author fields
my_desc$del("Maintainer")

# Set the version
my_desc$set_version("0.1.0")

# The title of your package
my_desc$set(Title = "R Client for the 'DHIS2' Web API")
# The description of your package
my_desc$set(Description = "Connet and pull data from a 'DHIS2 (District Health Information Software)' instance into R.")
# The urls
my_desc$set("URL", "https://github.com/amanyiraho/dhis2r")
my_desc$set("BugReports", "https://github.com/amanyiraho/dhis2r/issues")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license()
use_code_of_conduct(contact = "amanyiraho@gmail.com")
use_lifecycle_badge("stable")
use_news_md()

# Get the dependencies
use_package("httr2", min_version = TRUE)
#use_package("jsonlite")
use_package("attempt", min_version = TRUE)
use_package("R6", min_version = TRUE)
#use_package("purrr")
use_package("curl", min_version = TRUE)
use_package("dplyr", min_version = TRUE)

#Suggestion
use_package("testthat",type = "Suggests")
use_package("covr",type = "Suggests")
use_package("knitr",type = "Suggests")
use_package("rmarkdown",type = "Suggests")


# Clean your description
use_tidy_description()

### NAMESPACE

usethis::use_package_doc()

##

usethis::use_import_from("attempt", "stop_if_not")
usethis::use_import_from("attempt", "stop_if_any")
use_import_from("curl","has_internet")
