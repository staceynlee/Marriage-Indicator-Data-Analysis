# The Gapminder website contains over 500 data sets with information about
# the world's population. Your task is to download a data set of your choice
# and create 2-5 plots that make use of the techniques from Lesson 3.

#Load libraries and data
library(ggplot2)
library(dplyr)
df <- read.csv("indicator age of marriage.csv")

#Subset data 1900-2005
df <- select(df, X, X1900:X2005)

#Plot histogram of the age of first marriage by year
ggplot(data = df, aes(x = X1970)) + 
  geom_histogram(binwidth = .1) + 
  scale_x_continuous() + xlab('Worldwide age of first marriage in 1970') + 
  ylab('Frequency')

ggplot(data = df, aes(x = X2005)) + 
  geom_histogram(binwidth = .1) + 
  scale_x_continuous() + xlab('Worldwide age of first marriage in 2005') + 
  ylab('Frequency')

