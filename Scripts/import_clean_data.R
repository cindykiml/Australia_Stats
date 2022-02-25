## Purpose: This script will import and clean the dataset
## Date: February 25nd, 2022

install.packages("here")
install.packages("readr")
library(here)
library(readr)

# Dataset can be found at https://www.abs.gov.au/statistics/people/people-and-communities/general-social-survey-summary-results-australia/2020

# Import data
raw_data <- read_csv("Inputs/raw_data/GSS_Table3.csv")
View(raw_data)