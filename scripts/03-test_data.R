#### Preamble ####
# Purpose: Test desired data
# Author: Cristina Burca
# Date: 27 September 2024
# Contact: cristina.burca@mail.utoronto.ca
# Pre-requisites: Open Toronto Data

#### Workspace setup ####
library(tidyverse)

#### Import data ####
test_data <- read.csv("data/clean_data.csv")

test_data

# Test 1
unique(test_data$day_of_week)

# Test 2
test_data$longitude |>
  class() == "numeric"

# Test 3
length(unique(test_data$HOOD_158))

# Test 4
test_data$STREET1 |>
  class() == "character"
