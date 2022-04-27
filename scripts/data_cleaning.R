# Purpose: Clean the survey data downloaded from Adult Depression
# Author: Ashas Memon
# Data: 27 April 2022


library(dplyr)    
library(ggplot2)


raw_data <- readr::read_csv("../inputs/data/indicators.csv")
sex_col <- select(filter(raw_data, Strata == "Sex"), c(1:4))
names(sex_col)[3] <- "sex"
education_col <- select(filter(raw_data, Strata == "Education"), c(1:4))
age_col <- select(filter(raw_data, Strata == "Age"), c(1:4))
race_col <- select(filter(raw_data, Strata == "Race-Ethnicity"), c(1:4))


# create plot for  sex
sex_line_plot <- ggplot(sex_col, aes(x = Year, y = Frequency, fill = sex)) +
  geom_line() +
  geom_point(size = 4, shape = 21) +
  labs(x="Year", y="Number of Cases", title="Distribution of Depression for Male vs Females")

sex_line_plot
