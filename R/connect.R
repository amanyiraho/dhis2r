library(httr2)
library(R6)
library(purrr)

Dhis2r <- R6Class(
  "Dhis2r",
  public = list(
    name = NULL,
    request_sent = NULL,
    access_rights = NULL,
    account_info = NULL,


    initialize = function(base_url , username ,  password , api_version = "33" ) {

      self$request_sent <- request(base_url = base_url) |>
        req_url_path_append("api") |>
        req_url_path_append(api_version) |>
        req_auth_basic(username = username, password = password ) |>
        req_headers("Accept" = "application/json") |>
        req_user_agent("dhis2r (https://github.com/pearldatafirm/dhis2r)") |>
        req_retry(max_tries = 5)

    },

    get_user_info = function(){
      reponse <- self$request_sent |>
        req_url_path_append("me") |>
        req_perform()

  response_data  <-  reponse |>
        resp_body_json(simplifyVector = TRUE)

  self$access_rights <- unlist(response_data[["access"]])

  self$account_info <- unlist(list(response_data[["userCredentials"]][["createdBy"]][c("name", "username")], response_data["created"]))

  unlist( list( response_data["name"],
       response_data["phoneNumber"],
       response_data["email"]))

    }
  )

  )



#paste0("https://epivac.health.go.ug","/api/33/" )

dhis2_play_connection <- Dhis2r$new(base_url = "https://epivac.health.go.ug/", username = "amanyiraho",  password = "Epivac123.")


dhis2_play_connection$request_sent

dhis2_play_connection$get_user_info()
#class(dhis2_play_connection)
dhis2_play_connection$access_rights

dhis2_play_connection$account_info <- 2

