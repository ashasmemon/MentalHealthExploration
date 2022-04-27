# Purpose: Clean the survey data downloaded from Adult Depression
# Author: Ashas Memon
# Data: 27 April 2022


library(dplyr)    


raw_data <- readr::read_csv("../inputs/data/indicators.csv")
sex_col <- select(filter(raw_data, Strata == "Sex"), c(1:4))
education_col <- select(filter(raw_data, Strata == "Education"), c(1:4))
age_col <- select(filter(raw_data, Strata == "Age"), c(1:4))
race_col <- select(filter(raw_data, Strata == "Race-Ethnicity"), c(1:4))
