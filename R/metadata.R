# #We are going to need these two libraries
# library(httr)
# library(readr)
# #and this for the `%>%` operation
# library(magrittr)
# base.url<-"https://play.dhis2.org/dev/"
# url<-paste0(base.url,"api/me")
# username<-"admin"
#
# password<-"district"
#
#
# login<-GET(url, authenticate(username,password))
#
#
# #If we cannot login, stop with an error
# if(login$status == 200L) { print("Logged in successfully!")} else {stop("Could not login")}
#
#
#
#
# mydata <- paste0(base.url,"api/dhis-web-event-reports/") %>% #Define the API endpoint
#
#    GET(.,authenticate(username,password)) %>% #Make the HTTP call
#   content(.,"text") %>% #Read the response
#   readr::read_csv() #Parse the CSV
# head(mydata)
#
#
# ###
# library(datimutils)
#
# loginToDATIM(
#   base_url = "play.dhis2.org/2.36/",
#   username = "admin",
#   password = "district"
# )
#
#
# datimutils::getAnalytics(dx = "Uvn6LCg7dVU",
#                          ou = c("O6uvpzGd5pu", "fdc6uOvgoji"),
#                          pe = "LAST_12_MONTHS",
#                          return_names = TRUE)
#
#
# datimutils::getAnalytics(dx = "Uvn6LCg7dVU",
#                          ou_f = c("O6uvpzGd5pu", "fdc6uOvgoji"),
#                          pe = "LAST_12_MONTHS",
#                          return_names = TRUE)
#
#
# data <- tibble::tribble(~dataElement, ~orgUnit, ~value,
#                         "fbfJHSPpUQD", "kJq2mPyFEHo", 1,
#                         "cYeuwXTCPkU", "kJq2mPyFEHo", 2,
#                         "fbfJHSPpUQD", "Vth0fbpFcsO", 3
# )
# print(data)
# getDataElements(c("ANC 1st visit"), by = "name")
#
#
# getIndicators("")
#
# data <- getMetadata(
#   end_point = "indicators",
#   fields = "name"
# )
#
# data <- getMetadata(
#   end_point = "organisationUnits",
#   "organisationUnitGroups.name:eq:Hospital",
#   fields = "id,name,level"
# )
# print(data)
#
# ####
#
# loginToDATIM(
#   base_url = "https://dhis2nigeria.org.ng/dhis/",
#   username = "bil_qis",
#   password = "Bilqis123."
# )
#
# data <- getMetadata(
#   end_point = "indicators",
#   fields = "code"
# )
#
#
# data <- getMetadata(
#   end_point = "organisationUnits",
#   "name:eq:State",
#   fields = "id,name,level"
# )
#
# data
# ####
#
#
# loginToDATIM(
#   base_url = "https://epivac.health.go.ug/",
#   username = "biostat.kamuli",
#   password = "ChristReigns_2022"
# )
#
# list <- getMetadata(
#   end_point = "indicators"
# )
#
#
# data <- getMetadata(
#   end_point = "organisationUnits",
#   level %.eq% 3,
#   fields = "id,name,level"
# )
# data
#
# data <- getMetadata(
#   end_point = "organisationUnits",
#   fields = "id,name,level"
# )
#
#
#
#
#
# #this call uses only dimension arguments, dx, ou, and pe
# data <- datimutils::getAnalytics(dx = "AAJHUIlaLCi",
#                                  ou = "akV6429SUqu",
#                                  pe = "LAST_12_MONTHS",
#                                  return_names = TRUE)
# ##################### PREPS
#
#
# loginToDATIM(
#   base_url = "https://prep.mets.or.ug/",
#   username = "fariho1",
#   password = "Prep1234!"
# )
#
# indicators <- getMetadata(end_point = "indicators")
#
# organisation_units <- getMetadata(end_point = "organisationUnits",fields = "id, name, level")
#
#
# data <- datimutils::getAnalytics(dx = "rbzCSUq0xiw",
#                                  ou = "qSpBre1ZEDW",
#                                  pe = "202201;202202;202203;202204;202205;202206;202207;202208;202209;202210;202211",
#                                  return_names = TRUE)
#
# data
#
# ### epvac robisnon
#
# loginToDATIM(
#   base_url = "https://epivac.health.go.ug/",
#   username = "amanyiraho",
#   password = "Epivac123."
# )
#
# indicators <- getMetadata(end_point = "indicators")
#
# organisation_units <- getMetadata(end_point = "organisationUnits",fields = "id, name, level")
#
#
# data <- datimutils::getAnalytics(dx = "DSVbons8ifW",
#                                  ou = "oyygQ2STBST",
#                                  pe = "202201;202202;202203;202204;202205;202206;202207;202208;202209;202210;202211",
#                                  return_names = TRUE)
#
# data
# #####
#
#
# ### epvac bios
#
# loginToDATIM(
#   base_url = "https://epivac.health.go.ug/",
#   username = "wakitaka.hc0002",
#   password = "ChristReigns_2022"
# )
#
# indicators <- getMetadata(end_point = "indicators")
#
# organisation_units <- getMetadata(end_point = "organisationUnits",fields = "id, name, level")
#
#
# data <- datimutils::getAnalytics(dx = "W4zLvHdj2lR",
#                                  ou = "pAsdJsJETch",
#                                  pe = "202201;202202;202203;202204;202205;202206;202207;202208;202209;202210;202211",
#                                  return_names = TRUE)
#
# data
# #####
