## code to prepare `relative_periods` dataset goes here

library(dplyr)
library(stringr)


relative_periods <- tibble::tibble(
  period_type = rep("period_type", 30),
  period = c("THIS_WEEK", "LAST_WEEK", "LAST_4_WEEKS", "LAST_12_WEEKS", "LAST_52_WEEKS",
            "THIS_MONTH", "LAST_MONTH", "THIS_BIMONTH", "LAST_BIMONTH", "THIS_QUARTER", "LAST_QUARTER",
            "THIS_SIX_MONTH", "LAST_SIX_MONTH", "MONTHS_THIS_YEAR", "QUARTERS_THIS_YEAR",
            "THIS_YEAR", "MONTHS_LAST_YEAR", "QUARTERS_LAST_YEAR", "LAST_YEAR", "LAST_5_YEARS",
            "LAST_10_YEARS", "LAST_10_FINANCIAL_YEARS", "LAST_12_MONTHS",
            "LAST_3_MONTHS", "LAST_6_BIMONTHS", "LAST_4_QUARTERS", "LAST_2_SIXMONTHS", "THIS_FINANCIAL_YEAR",
            "LAST_FINANCIAL_YEAR", "LAST_5_FINANCIAL_YEARS")) |>
  mutate(period_type = case_when(
    str_detect(string = period, "YEAR") == TRUE ~"yearly",
    str_detect(string = period, "QUARTER") == TRUE ~"quarterly",
    str_detect(string = period, "MONTH") == TRUE ~"monthly",
    str_detect(string = period, "WEEK") == TRUE ~"weekly"
    ))




usethis::use_data(relative_periods, overwrite = TRUE)
