#### Preamble ####
# Purpose: Clean desired data
# Author: Cristina Burca
# Date: 27 September 2024
# Contact: cristina.burca@mail.utoronto.ca
# Pre-requisites: Open Toronto Data

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
data <- read.csv("/Users/cristinaburca/Toronto_Accident_Analysis/data/raw_data.csv")

clean_data <- data %>% 
  filter(AUTOMOBILE == "Yes" | MOTORCYCLE == "Yes" | TRUCK== "Yes" |TRSN_CITY_VEH == "Yes" | EMERG_VEH == "Yes") %>%
  filter(!(ROAD_CLASS %in% c('None', 'Local', 'Other'))) %>%
  select(DATE, TIME, STREET1, STREET2, HOOD_158, geometry) %>%
  filter(!is.na(geometry)) %>%
  mutate(
    date = ymd(DATE),  # Convert the DATE column to a proper date format
    day_of_week = wday(date, label = TRUE, week_start = 1))

# Extract coordinates
clean_data <- clean_data %>%
  mutate(
    geometry_clean = gsub(".*\\[\\[(-?[0-9.]+),\\s*(-?[0-9.]+)\\].*", "\\1,\\2", geometry))

clean_data <- clean_data %>%
  separate(geometry_clean, into = c("longitude", "latitude"), sep = ",", convert = TRUE)

# Create hour column
clean_data <- clean_data %>%
  mutate(
    time = sprintf("%04d", as.numeric(TIME)),
    hour = substr(time, 1, 2))

#### Save data ####
write_csv(clean_data, "data/clean_data.csv")
