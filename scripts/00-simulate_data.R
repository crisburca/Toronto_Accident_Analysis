#### Preamble ####
# Purpose: Simulates desired data
# Author: Cristina Burca
# Date: 27 September 2024
# Contact: cristina.burca@mail.utoronto.ca
# Pre-requisites: Open Toronto Data

#### Workspace setup ####
library(dplyr)
library(lubridate)
library(tidyr)
library(readr)

#### Simulate data ####
set.seed(123)

n <- 1000

# Simulate the accident data
simulated_data <- tibble(
  DATE = sample(seq(as.Date('2006-01-01'), as.Date('2023-12-31'), by="day"), n, replace = TRUE),
  TIME = sprintf("%04d", sample(0:2359, n, replace = TRUE)),  # Random times in HHMM format
  STREET1 = sample(c("Main St", "Queen St", "King St", "Bloor St", "Dundas St"), n, replace = TRUE),
  STREET2 = sample(c("Yonge St", "Bathurst St", "Spadina Ave", "Bay St", "Jarvis St"), n, replace = TRUE),
  HOOD_158 = sample(1:158, n, replace = TRUE),  # Simulating 158 neighborhoods
  geometry = paste("[[", round(runif(n, min = -79.6, max = -79.2), 6), ", ", round(runif(n, min = 43.6, max = 43.85), 6), "]]", sep = ""),
)
