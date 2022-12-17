#' @import httr2
#'


library(httr2)
library(jsonlite)

##

 # (response <- request("https://epivac.health.go.ug/api/33/") |>
 #   req_auth_basic(username = "amanyiraho", password = "Epivac123.") |>
 #   req_url_path_append("me") |>
 #  req_headers("Accept" = "application/json") |>
 #  req_retry(max_tries = 5) |>
 #  req_perform()
 # # req_dry_run()
 #   )

(response <- request("https://epivac.health.go.ug/api/33/") |>
    req_auth_basic(username = "amanyiraho", password = "Epivac123.") |>
    req_url_path_append("me") |>
    req_headers("Accept" = "application/json") |>
    req_retry(max_tries = 5) |>
    req_perform()
  # req_dry_run()
)

response

response |>
resp_body_raw()


(resp_body_json <-  response |>
   resp_body_json(simplifyVector = TRUE))

resp_body_json |>
 str()


## logined in user

resp_body_json["displayName"]
resp_body_json$name


## contact info

resp_body_json[["phoneNumber"]]
resp_body_json[["email"]]




str(resp_body_json$userCredentials)

# account info
resp_body_json["created"]

resp_body_json[["userCredentials"]]["accountExpiry"]
resp_body_json$userCredentials$accountExpiry

# access rights
unlist(resp_body_json[["access"]])


## organisation unit

unname(unlist(resp_body_json[["organisationUnits"]]))

##

resp_body_json[["programs"]]


## created by

unlist(resp_body_json[["userCredentials"]][["createdBy"]])[c("name", "username")]



################

(response <- request("https://epivac.health.go.ug/api/33/") |>
   req_auth_basic(username = "amanyiraho", password = "Epivac123.") |>
   req_url_path_append("organisationUnits") |>
   #req_url_query(fields= "id,name,level") |>
   req_url_query(fields= "name,id,level", filter = "level:eq:2") |>
   req_headers("Accept" = "application/json") |>
   req_retry(max_tries = 5) |>
   req_perform()
 # req_dry_run()
)

df <- response |>
  resp_body_json()

dff <- df$organisationUnits
fromJSON(toJSON(dff))


## all fields available

(response <- request("https://epivac.health.go.ug/api/33/") |>
    req_auth_basic(username = "amanyiraho", password = "Epivac123.") |>
    req_url_path_append("dimensions") |>
    req_url_query(fields= ":all", page ="true", pageSize = "1") |>
    req_headers("Accept" = "application/json") |>
    req_retry(max_tries = 5) |>
    req_perform()
  # req_dry_run()
)


df <- response |>
  resp_body_json()

dff <- df[[2]]
names(fromJSON(toJSON(dff)))




