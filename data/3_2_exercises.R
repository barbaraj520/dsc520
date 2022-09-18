# Assignment: ASSIGNMENT 3
# Name: Jean, Barbara
# Date: 2022-09-18


## Load the `ggplot2` library

library(ggplot2)

cencus_data <- read.csv("C:/Users/79bar/dsc520/data/acs-14-1yr-s0201.csv")

## Run the following functions str(); nrow(); ncol()
str(cencus_data)
nrow(cencus_data)
ncol(cencus_data)

## Create a Histogram of the HSDegree variable using the ggplot2 package.

ggplot(cencus_data,aes(HSDegree)) + geom_histogram(bins=20, colour = "black", fill = "white")+ 
  labs(x= "Percentage HS Degree", y="Frenquency", 
  title = " Frequency distribution of the HSDegre per Percentage")


##Normal curve to the Histogram by plotting.

hist.HSDegree <-ggplot(cencus_data,aes(HSDegree))+theme(legend.position="none")+
geom_histogram(aes(y=..density..),bins=20,colour="black",fill="white")+ 
labs(x="Percentage HS Degree",y="Frenquency", 
     title = "  Frequency distribution of the HSDegre per Percentage")
hist.HSDegree +stat_function(fun = dnorm, args = list(mean = mean(cencus_data$HSDegree, na.rm = TRUE),
sd = sd(cencus_data$HSDegree, na.rm = TRUE)), colour = "red", size = 0.7)


##create a Probability Plot of the HSDegree variable

qqplot.HSDegree <- qplot(sample=cencus_data$HSDegree, stat="qq")+ 
  labs(x= "Theoretical", y="Percentage", title = " Probability plot of the HS Degre") 
qqplot.HSDegree

## Quantify normality with numbers using the stat.desc() function.

library(pastecs)

stat.desc(cencus_data$HSDegree, basic = FALSE, norm = TRUE)










