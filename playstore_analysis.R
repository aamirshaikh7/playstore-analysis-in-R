# Extracting data from large data set

library(dplyr)
library(datasets)
library(skimr)

df <- read.csv("googleplaystore.csv")

df

View(df)

head(df)

class(df)

# Exploratory analysis 

dim(df)

names(df)

str(df)

glimpse(df)

summary(df)

summary(df$Rating)

skim(df)

sum(is.na(df))

colSums(is.na(df))  

View(colSums(is.na(df)))

missingdata <- df[!complete.cases(df), ]

sum(is.na(missingdata))

View(missingdata)