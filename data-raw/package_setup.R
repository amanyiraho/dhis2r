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
            role = c('cre', 'aut'), comment = c(ORCID = '0000-0002-7747-1367')),
            person('GEEKS', role = c('cph')),
            person('AFENET', role = c('fnd')))")

# Remove some author fields
my_desc$del("Maintainer")

# Set the version
my_desc$set_version("0.0.0.9000")

# The title of your package
my_desc$set(Title = "An R client for the Dhis2 web API")
# The description of your package
my_desc$set(Description = "Pull data from a DHIS2 instance into R without the hassle of logging into the
            DHIS2 user interface every day, week, month, quarter, or year to download the same data or
            make the same routine data analysis steps based on fixed or relative periods.")
# The urls
my_desc$set("URL", "https://github.com/amanyiraho/dhis2r")
my_desc$set("BugReports", "https://github.com/amanyiraho/dhis2r/issues")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license()
use_code_of_conduct(contact = "amanyiraho@gmail.com")
use_lifecycle_badge("Experimental")
use_news_md()

# Get the dependencies
use_package("httr2")
use_package("jsonlite")
use_package("attempt")
use_package("R6")
use_package("purrr")
use_package("curl")

#Suggestion
use_package("testthat",type = "Suggests")

#



# Clean your description
use_tidy_description()

### NAMESPACE

usethis::use_package_doc()

##

usethis::use_import_from("attempt", "stop_if_not")
usethis::use_import_from("attempt", "stop_if_any")
use_import_from("curl","has_internet")
