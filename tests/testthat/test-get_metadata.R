# # test_that("multiplication works", {
# #   expect_equal(2 * 2, 4)
# # })
#
#
# paste0("https://epivac.health.go.ug","/api/33/" )
#
# dhis2_play_connection <- Dhis2r$new(base_url = "https://play.dhis2.org/", username = "admin",  password = "district",api_version = "2.39.0.1", api_version_position = "before")
#
#
#
# resources <- dhis2_play_connection$get_metadata()
#
#
# metadata_fields_dataElements <-  dhis2_play_connection$get_metadata_fields(endpoint = "dataElements")
#
# metadata_fields_organisationUnits <-  dhis2_play_connection$get_metadata_fields(endpoint = "organisationUnits")
#
# metadata_fields_indicators <-  dhis2_play_connection$get_metadata_fields(endpoint = "indicators")
#
# dataElements <- dhis2_play_connection$get_metadata(endpoint = "dataElements")
#
# metadata_fields_periodTypes <-  dhis2_play_connection$get_metadata(endpoint = "periodTypes", fields = ":all")
#
#
# organisationUnits <- dhis2_play_connection$get_metadata(endpoint = "organisationUnits",
#                                                         fields =  c("name","id", "level"))
#
#
# indicators <-  dhis2_play_connection$get_metadata(endpoint = "indicators")
#
#
