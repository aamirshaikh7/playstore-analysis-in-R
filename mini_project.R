# Extracting data from large data set

library(dplyr)
library(datasets)
library(skimr)

df <- read.csv("googleplaystore.csv")

df

View(df)

head(df)

class(df)