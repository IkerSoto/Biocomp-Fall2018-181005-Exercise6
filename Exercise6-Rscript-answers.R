#Exercise 6 Iker Soto
getwd()
setwd("Documents/biocomputing-2018/Biocomp-Fall2018-181005-Exercise6/")
read.csv(file="iris.csv")
# First part of exercise 6
#Defining variable for the file we want to analyse
flower<-read.csv(file="iris.csv")
#Getting an idea of the characteristics of the file
head(flower) 
class(flower)
dim(flower)
#Writing a function that works like head in unix for any csv file, the default variable (lines=1:10) prints the first 10 lines unless told otherwise
headlike<-function(data,lines=1:10) {
  head<-data[lines,] # Prints the first ten lines in all the columns by default
  return(head)
  }
#Usage: headlike(name of variable to analyze, number of lines you want to get - 10 by default -
headlike(flower)
#Example of syntax used when you want the function to return a number of lines different from the the default
headlike(flower,1:5)
#Second part of exercise 6
####
#Printing the last 2 rows in the last 2 columns of "iris.csv"
flower[149:150,4:5]
####
#Getting the number of observations for each species included in the data set by creating a function with a logic test
numobservation<-function(data,specie){
  obsperspecie<-data[data$Species==specie,]
  nrow(obsperspecie)
}
#Example of use: getting the number of observations for the specie setosa
numobservation(flower,"setosa")
####
#Getting number of observations of each specie separately by writing three different codes with logic tests
#Num of observations for setosa
setosa<-flower[flower$Species=="setosa",]
nrow(setosa)
#Num of observations for virginica
virginica<-flower[flower$Species=="virginica",]
nrow(virginica)
#Num of observations for versicolor
versicolor<-flower[flower$Species=="versicolor",]
nrow(versicolor)
####
#Getting rows with Sepal.Width>3.5 by using a logic test to index data
SepalWidthGreater3.5<-flower[flower$Sepal.Width>3.5,]
SepalWidthGreater3.5
####
#Writing the data for the species setosa to a comma-delimited file named setosa.csv
write.csv(setosa,"setosa.csv", row.names = F)
newcsv<-read.csv(file="setosa.csv")
newcsv
#####
#Calculate the mean, minimum, and maximum of Petal.Length for observations of virginica
# Calculating mean
mean(virginica[,3]) #Calculates the mean value of the 3rd column (Petal.Lenght) for the virginica variable which only contains the observations for the virginica specie
#Calculating minimum
min(virginica[,3])
#Calculating maximum
max(virginica[,3])

