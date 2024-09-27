#### Preamble ####
# Purpose: Download desired data
# Author: Cristina Burca
# Date: 27 September 2024
# Contact: cristina.burca@mail.utoronto.ca
# Pre-requisites: Open Toronto Data

library(opendatatoronto)

resources <- list_package_resources("https://open.toronto.ca/dataset/motor-vehicle-collisions-involving-killed-or-seriously-injured-persons/")

datastore_resources <- filter(resources, tolower(format) %in% c('csv'))

raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()

write_csv(
  x = raw_data,
  file = "data/raw_data.csv")