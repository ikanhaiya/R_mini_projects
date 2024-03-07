

# load iris data set 

library(datasets)
data(iris) # lodaing iris dataset inti current workspace 

iris <- datasets::iris # accessing the iris dataset from datasets package in R

# method 2 
# install.packages("RCurl")

library(RCurl)
irisData <- read.csv(text = getURL(""))

View(iris)

# display summary statistics 

# head() / tail()

head(iris, 4)  # first 4 rows
tail(iris,4)   # last 4 rows 

# summary()

summary(iris)
summary(iris$Sepal.Length) # summary of only sepal.length

# check if there are missing function

sum(is.na(iris))

# skimr() - expands on summary by providing largest set of statistics 
# install.packages("skimr") sometimes this may cause problem or due to some dependecies this not get insatalled
# use install.packages("skimr", type = "source")

install.packages("skimr", type = "source")
library(skimr)

skim(iris) # perform skim(iris) to display summary statistics 

#  %>% -> pipe operator -> chain together multiple fucntions that resembles like the pipline comes from "magrittr" package 
# result of one function becomes input for other function 
# takes result of expression on left and feeds it on right argument 


iris %>% dplyr::group_by(Species) %>% skim()

# ----------------visualization 

# scatter plot -> graphs that present the relationship between two variables in a data-set.
# It represents data points on a two-dimensional plane or on a Cartesian system. X-axs independent 
#, Y-axs - dependent varialbel(attribute )



# panel plot  >> lattice plot or trellis plot, is a type of data visualization that
# displays multiple plots in a grid or matrix format.

plot(iris) # gives panel plot 
plot(iris, col="red")

plot(iris$Sepal.Length, iris$Sepal.Width, col="green") # gives scatter plot 

# labeling the x and y axis 
plot(iris$Sepal.Length, iris$Sepal.Width, col="red", xlab = "Sepal length", ylab="Sepal width")

# histogran

hist(iris$Sepal.Length, col = "red")
hist(iris$Sepal.Length, col="red", main="Histogram of Sepal length")






