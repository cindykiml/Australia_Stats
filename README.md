# Conditions of Individuals Who Volunteer As Caretakers for Vulnerable Populations in Australia

## Overview
It is often said that volunteering is an act of altruism. An action that benefits both parties receiving and providing the voluntary support. Commonly endorsed by organizations as a means to not only help oneself, but also a practice that would lead to an overall improved personal circumstance. It’s been touted to boost self-confidence, decrease anxiety, and enhance the mood of a person. This leads to encouraging people from vulnerable populations to offer their time to support another person.

When it comes to volunteering statistics, the conditions and abilities of those who volunteer are often overlooked. We understand that volunteering benefits both parties and wanted to understand more about the details of the demographics involved, specifically focusing on chronic conditions. Using the summary data from Australia's 2020 General Social Survey, we were able to find the various conditions of those that volunteer and those who receive volunteer help. For volunteers, these conditions include having a disability, mental health condition (MC), and long-term health condition (LTHC). For the population receiving help, this included those who have a disability, long-term health condition, or were of old age.

This repository contains all of the files used by our team to write our report on Australian volunteer population stats. Data was downloaded from the Australian Bureau of Statistics website and processed using R via RStudio. Our team of three is composed of three analysts: Cindy Ly, Eden Barker, and Shae-Linn Davies.

## Methods and Findings
After data was downloaded from the Australian Bureau of Statistics, we cleaned and created two new dataframes, one for male and female. The processed data was then transcribed into two graphs and a table in order to observe a pattern in the conditions of volunteers and those receiving help. Our findings indicate that females volunteer more than males. Out of caretakers who do have a condition, individuals with long-term health conditions were the greatest population to volunteer. On the other hand, for caretakers without a condition, non-mental health was the greatest population for that sector. Our team then used relevant literature to support our findings and interpret the results. 

## Survey
Our follow-up survey can be found [here](https://forms.gle/eVPvgLjYRtsaNnSh8)

## File Structure

### Inputs folder
The Inputs folder contains the raw data and .csv files needed to create our graphs and table, as well as the relevant literature referenced in our paper.

male_data.csv: newly created dataframe to later transcribe into graph to show male volunteers
female_data.csv: newly created dataframe to later transcribe into graph to show female volunteers

#### raw_data Folder: 
GSS_Table3.csv: raw data from Australia’s 2020 General Social Survey

#### Literature Folder:
Contains the relevant literature that was available in PDF format used in our paper.

### Scripts
Our Scripts folder contains the .R scripts used to process the .csv files in order to create our graphs and table

import_clean_data.R: code used to import and clean data, and create two new dataframes
graph_table.R: code used to create graphs and table

### Outputs
Our outputs folder contains the final products of our paper

Australia_Stats.Rmd: The R Markdown script used to create our final product
Australia_Stats.pdf: Our paper and final product
references.bib: All our references when writing the paper

#### Survey
Contains the questions from our survey (in case the link provided fails to work).
