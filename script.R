# This script creates an overview of Google Trends search statistics for international cooperative climate initiatives.

# load libraries
library(gtrendsR)
library(tidyverse)
library(ggplot2)
library(googlesheets4)

# import list of initiatives from google sheets "keyword_hits_merged_with_DIE_data"
read_sheet("https://docs.google.com/spreadsheets/d/1ObyaHJcOJNeAZqpRNZZd81BxqstDLQ2D3OazbItmhcY/edit#gid=775840960", range = cell_cols(6))

# 
           