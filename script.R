# This script creates an overview of Google Trends search statistics for international cooperative climate initiatives.

# load libraries
library(gtrendsR)
library(tidyverse)
library(ggplot2)
library(googlesheets4)

# import list of initiatives from google sheets "keyword_hits_merged_with_DIE_data"
df_raw <- read_sheet("https://docs.google.com/spreadsheets/d/1ObyaHJcOJNeAZqpRNZZd81BxqstDLQ2D3OazbItmhcY/edit#gid=775840960", range = cell_cols(5:6))

# put data into tibble, rename some columns
df <- df_raw %>%
        as.data.frame() %>%
        rename("initiative" = colnames(df_raw[2]))

# create list of initiative names
names <- as.list(df$initiative)

# create loop for each cell

test <- data.frame()

  for (i in 1:length(names)) {  #go to first item in list of initiative names
     
  #run list through gtrends search
     result <- names[i] %>% gtrends(gprop = "news", time = "today 1-m", onlyInterest=FALSE)
  
  }

gtrends(c("cats", "dogs", "fish", "horses", "cows"), gprop="web", time = "today 1-m") # example how +5 search terms do not work