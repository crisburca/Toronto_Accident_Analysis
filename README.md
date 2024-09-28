# Toronto Accident Analysis

## Overview

This study analyzes traffic accidents in Toronto from 2006 to 2023, focusing on spatial and temporal patterns to identify high-risk neighborhoods and peak accident times. Using accident data, we examined patterns by neighborhood, hour of the day, day of the week, and month of the year, with focus to evening rush hour and seasonal trends.

## File Structure

The repo is structured as follows:

-   `data/raw_data` contains the data sources used in analysis including the raw data. Insturctions for download are available in `scripts/01-download_data.R`.
-   `data/clean_data` contains the cleaned data used for the paper, cleaned in `scripts/02-data_cleaning.R`.
-   `outputs` contains the files used to generate this paper, including the Quarto document, the rendered PDF, and the bibliogrpahy file.
-   `scripts` contains the R scripts used to simulate, download, clean, and test data.
-   `other/LLM` contains the LLM usage.
-   `other/sketches` contains the sketches of the data and models.
-   `other/images` contains the images in the appendix of the paper.

## LLM Usage: 
ChatGPT 4o was used as the generative ai to help with the constrcution of grpahs and maps. Chat log is available in `other/LLM/usage.txt` and in this link: https://chatgpt.com/share/66f6f38c-1a54-8004-bb91-f2e8e76f0870
