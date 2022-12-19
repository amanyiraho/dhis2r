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


    initialize = function(base_url , username ,  password , api_version = "33") {

      self$request_sent <- request(base_url = base_url) |>
        req_url_path_append(api_version) |>
        req_url_path_append("api") |>
        req_auth_basic(username = username, password = password ) |>
        req_url_query(paging = "false") |>
        req_headers("Accept" = "application/json") |>
        req_user_agent("dhis2r (https://github.com/pearldatafirm/dhis2r)") |>
        req_retry(max_tries = 5)

    }
  )

  )


