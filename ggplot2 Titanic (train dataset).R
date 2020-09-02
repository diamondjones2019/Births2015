#Learned ggplot2 tutorial from (Youtube: https://www.youtube.com/watch?v=49fADBfcDD4)


#installed package ggplot2
install.packages(ggplot2)
library(ggplot2)


#import data from computer file 
train <-read.csv("R/train.csv")


#review the data
view(train)


#Factor the columns that has factors in the dataset
train$Pclass <- as.factor(train$Pclass)
train$Survived <- as.factor(train$Survived)
train$Sex <- as.factor(train$Sex)
train$Embarked <- as.factor(train$Embarked)


#What is the surival rate? - Bar chart 
ggplot(train, aes(x= Survived)) + geom_bar()


#what is the percentage survival rate?
prop.table(table(train$Survived))


#Customize the tables - titles and labels
ggplot(train, aes(x= Survived)) + theme_bw() + geom_bar() + labs(y = "Passenger Count", title = "Titanic Survival Rates")


#What is the surival rate by gender? 
ggplot(train, aes(x= Sex, fill= Survived)) + theme_bw() + geom_bar() + labs(y = "Passenger Count", title = "Survival Rate by Gender")


#What is the survival rate by class of ticket (Pclass)?
ggplot(train, aes(x= Pclass, fill= Survived)) + theme_bw() + geom_bar() + labs(y = "Passenger Count", title = "Survival Rate by Pclass")


#what was the survival rate by class of ticket and gender? 
ggplot(train, aes(x= Sex, fill= Survived)) + theme_bw() + facet_wrap(~ Pclass) + geom_bar() + labs(y = "Passenger Count", title = "Survival Rate by Pclass and Sex")


#What is the distribution of passenger ages? - Histogram
ggplot(train, aes(x= Age)) + theme_bw() + geom_histogram(binwidth = 5) + labs(y = "Passenger Count", x = "Age (binwidth = 5)", title = "Titanic Age Distribution")
#Same question, adding fill option for color 
ggplot(train, aes(x= Age, fill = Survived)) + theme_bw() + geom_histogram(binwidth = 5) + labs(y = "Passenger Count", x = "Age (binwidth = 5)", title = "Titanic Age Distribution")


#What is the distribution of passengers ages? - Box and Whisker Plot
ggplot(train, aes(x= Survived, y = Age)) + theme_bw() + geom_boxplot() + labs(y = "Age", x = "Survived", title = "Titanic Survival Rates by Age")


#same question, with fill (Survived) and density 
ggplot(train, aes(x= Survived, fill = Survived)) + theme_bw() + facet_wrap(Sex ~ Pclass) + geom_density(alpha = 0.5) + labs(y = "Age", x = "Survived", title = "Titanic Survival Rates by Age,Pclass")


# What is the survival rates by age, pclass and sex? - histogram and facet wrap (color)
ggplot(train, aes(x= Age, fill = Survived)) + theme_bw() + facet_wrap(Sex ~ Pclass) + geom_histogram(binwidth = 5) + labs(y = "Age", x = "Survived", title = "Titanic Survival Rates by Age, Pclass and Sex")





