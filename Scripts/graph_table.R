## Purpose: This script will import processed data, create graphs and a table
## Date: March 4th, 2022

install.packages("ggplot2")
install.packages("here")
install.packages("dplyr")
install.packages("tidyverse")
library(ggplot2)
library(here)
library(dplyr)
library(tidyverse)

# Read .csv files from Inputs folder
male_data <- read_csv(here("Inputs", "male_data.csv"))
female_data <- read_csv(here("Inputs", "female_data.csv"))

# The dataset from the Australian Bureau of Statistics displays each category as columns, however our graph we need to arrange them into one singular column
# We need to create a new dataframe that will be used for creating barcharts

## MALES
# Category column (first category is yes, second is no)
Category <- c('Mental Condition', 'Mental Condition', 'Long Term', 'Long Term', 'Disability', 'Disability')

# Amount column
Amount <- c(189.1, 850.1, 680.8, 377.4, 473.5, 553.4)

# Classification column
Classification <- c('Yes', 'No', 'Yes', 'No', 'Yes', 'No')

# Join the columns together
male_df <- data.frame(Category, Amount, Classification)

# From this we can now make a bar chart
male_graph <- ggplot(male_df, aes(factor(Category), Amount, fill = Classification)) + 
  geom_bar(width = 0.7, stat="identity", position = "dodge") + 
  labs(title = "Conditions of Males Who Have Cared for Another Person with a Disability, Long-term Health Condition or Old Age in Last 4 Weeks",
       x = "Condition",
       y = "Number of Males") +
  theme_minimal() +
  scale_fill_manual(values = c("#7ac975", "#211ec7"))

## FEMALES
# Amount column
Amount2 <- c(348, 1125.2, 902.1, 588.2, 525.1, 961.6)

# Classification column
Classification <- c('Yes', 'No', 'Yes', 'No', 'Yes', 'No')

# Join the columns together
female_df <- data.frame(Category, Amount2, Classification)

# From this we can now make a bar chart
female_graph <- ggplot(female_df, aes(factor(Category), Amount2, fill = Classification)) + 
  geom_bar(width = 0.7, stat="identity", position = "dodge") + 
  labs(title = "Conditions of Females Who Have Cared for Another Person with a Disability, Long-term Health Condition or Old Age in Last 4 Weeks",
       x = "Condition",
       y = "Number of Females") +
  theme_minimal() +
  scale_fill_manual(values = c("#7ac975", "#211ec7"))
