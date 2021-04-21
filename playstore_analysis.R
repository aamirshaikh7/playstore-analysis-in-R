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

# Outlier analysis

df2[df2$Rating > 5]

sum(df2$Rating > 5)

# 1. clear all missing values

clean_data <- na.omit(df)

sum(is.na(clean_data))

View(clean_data)

# 2. Replacing missing value with mean or median

df2 <- df

for (i in which(sapply(df2, is.numeric))) {
  df2[is.na(df2[, i]), i] <- median(df2[, i], na.rm = TRUE)
}

sum(is.na(df2))