#' @import httr
#'

library(httr)
library(rvest)
library(XML)

resp <- GET(url = "https://epivac.health.go.ug/api/33/me", accept_json(),
           authenticate(user = "wakitaka.hc0002", password = "ChristReigns_2022"))
           # authenticate(user = "amanyiraho", password = "Epivac123."))

resp <- GET(url = "https://prep.mets.or.ug/api/33/me", accept_json(),
            # authenticate(user = "wakitaka.hc0002", password = "ChristReigns_2022"))
            authenticate(user = "fariho1", password = "Prep1234!"))


resp_content <- content(resp)


# name
resp_content$name

# phone number
resp_content$phoneNumber

# access
resp_content$access

##
resp_content$userCredentials

resp_content$userCredentials$accountExpiry

##

unname(unlist(resp_content$organisationUnits))

##

unname(unlist(resp_content$authorities))

##

resp_content$programs

##
resp_content$authorities

##

resp <- GET(url = "https://epivac.health.go.ug/api/33/periodTypes", accept_json(),
            authenticate(user = "wakitaka.hc0002", password = "ChristReigns_2022"))
# authenticate(user = "amanyiraho", password = "Epivac123."))




resp_content <- content(resp)


fromJSON(toJSON(resp_content))
