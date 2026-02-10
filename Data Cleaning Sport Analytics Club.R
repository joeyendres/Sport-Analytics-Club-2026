###############################################################################
# Title: Sport Analytics Club Demo 
# Author: Joey Endres
# Date: 9 Feb, 2026
###############################################################################

# import the necessary libraries
install.packages("tidyverse")
library(tidyverse)

# read in the data
df <- read.csv("macBasketball.csv")
head(df)

# eliminate the multi index
# use first row as column names
names(df) <- as.character(df[1, ])

# drop the first row
df <- df[-1, ]

# data cleaning
names(df)[c(7:12, 36)] <- c("ConfWins", "ConfLosses", "HomeWins", "HomeLosses", "AwayWins", "AwayLosses", "PtsAgainst")
df <- df[-c(13, 17, 37)]

# write it to a .csv
write_csv(df, "Mid-American Basketball.csv")
