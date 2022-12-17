#
#
# library(httr)
# r <- GET("http://httpbin.org/get")
# r
# http_status(r)
# http_type(r)
# warn_for_status(r)
# stop_for_status(r)
#
# headers(r)
#
# library(httr)
#
# github_api <- function(path) {
#   url <- modify_url("https://api.github.com", path = path)
#
#   resp <- GET(url)
#   if (http_type(resp) != "application/json") {
#     stop("API did not return json", call. = FALSE)
#   }
#
#   parsed <- jsonlite::fromJSON(content(resp, "text"), simplifyVector = FALSE)
#
#   structure(
#     list(
#       content = parsed,
#       path = path,
#       response = resp
#     ),
#     class = "github_api"
#   )
# }
#
#
# print.github_api <- function(x, ...) {
#   cat("<GitHub ", x$path, ">\n", sep = "")
#   str(x$content)
#   invisible(x)
# }
#
#  r<- github_api("/user/amanyiraho")
# r
# status_code(r)
#
#
# f <- function(x = c("apple", "banana", "orange")) {
#   match.arg(x)
# }
# f("oran")
