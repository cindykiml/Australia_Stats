<<<<<<< HEAD
## Purpose: This script will import and clean the dataset
## Date: February 25nd, 2022

install.packages("here")
install.packages("readr")
install.packages("dplyr")
install.packages("tidyverse")
library(here)
library(readr)
library(dplyr)
library(tidyverse)

# Dataset can be found at https://www.abs.gov.au/statistics/people/people-and-communities/general-social-survey-summary-results-australia/2020

# Import data
raw_data <- read_csv(here("Inputs", "raw_data", "GSS_Table3.csv"))

# Delete unnecessary columns that have no value (n/a) in them
raw_data <- select(raw_data, -c(10:256))
raw_data <- select(raw_data, -c(4, 7))

# The data categories are in columns but need to be combined into one column
# We are focusing on male data first, so lets delete the rest of the rows that are irrelevant
male_data <- raw_data[-c(1:28),]
male_data <- male_data[-c(2:350),]

# Save the dataframe as a .csv file
write_csv(male_data, "Inputs/male_data.csv")

# Repeating the same steps for females 

raw_data <- read_csv("Inputs/raw_data/GSS_Table3.csv")

raw_data <- select(raw_data, -c(10:256))
raw_data <- select(raw_data, -c(4, 7))

female_data <- raw_data[-c(1:151),]
female_data <- female_data[-c(2:227),]

write_csv(female_data, "Inputs/female_data.csv")
=======
# Purpose: This script will read and clean the data
# Date: February 25th, 2022

library(readr)
raw_data <- read_csv("Inputs/raw_data/GSS_Table3.csv")
View(raw_data)
>>>>>>> main
