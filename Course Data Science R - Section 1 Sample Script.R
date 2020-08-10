# install the package that will then be loaded to use in a script
install.packages('tidyverse')
install.packages('dslabs')
# loads the library to use in the script
library(dslabs)
# shows help for a function
help(log)
# shows arguments of a function
args(log)
# this function below lists all datasets available to use
data()
# writing the name of a data set will show data in the data set
Titanic
# comment that can be included in the code
# to see data types of a variable or function
x <-23
class(x)
data(murders)
class(murders)
# look at the structure of a data frame
str(murders)
# look at first 6 rows of data frame - row = observations, columns = variables
head(murders)
# look up column names
names(murders)
# look up all values of a column
murders$population
murders[["population"]]
# check length of a vector/list by checking its size
length(murders$population)
# get data type of a column
class(murders$state)
# factor data type/class is for lookup data, categorical data
class(murders$region)
# lookup all possible values of a categorical data
levels(murders$region)
# table function provides occurance count for each of disctinct categorical data - distinct count
table(murders$region)
log(1024,base=4)
data(movielens)
length(movielens)
str(movielens)
nlevels(movielens$genres)
# concatenate several values to create an object of type vector
nmurders <- c(380, 112, 321)
#generating a sequence in increments defined
seq(1,3,0.2)
# coersion to a certain data type
x <- c(20,30,40)
as.character(x)
x <- murders$total
as.character(x)
# sorting, ordering and ranking
x <- murders$total
sort(x)
order(x)
rank(x)
help("!")
# vector arithmetic
help("sum")
# exercise
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time <- time / 60
time
speed <- distance/time
speed

# Section 3 Indexing, Wrangling
# perform logical operation based on a static value or dynamic values
murder_rate <- murders$total / murders$population * 100000
mystates <- murder_rate <= 0.71
mystates
murders$state[mystates]

Cntry <- c("Italy", "Spain", "Morocco")
CntryMrdrrate <- c(0.71, 0.45, 0.34)
myfavcountries <- data.frame(Country = Cntry, Murderrate = CntryMrdrrate)

myFavStates <- murder_rate <= myfavcountries$Murderrate

# wrangling of data frame
install.packages("dplyr")
library(dplyr)

#section 3 assessment
library(dslabs)
data(heights)
options(digits = 3)   
str(heights)
ind <- heights$height > mean(heights$height)
ind
sum(ind)
ind2 <- heights$height > mean(heights$height) & heights$sex == "Female"
sum(ind2)
ind3 <- heights$sex == "Female"
sum(ind3)
mean(ind3)

heights$sex[match(min(heights$height),heights$height)]
max(heights$height)
x <- min(heights$height):max(heights$height)
sum(! x %in% heights$height)

install.packages("dplyr")
Yes

library(dplyr)
heights2 <- mutate(heights,ht_cm = height * 2.54)
heights2$ht_cm[18]
mean(heights2$ht_cm)

females <- filter(heights2, sex=="Female")
mean(females$ht_cm)

library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic,olive$palmitoleic)
hist(olive$eicosenoic)
boxplot(palmitic~region,data=olive)

# section 4 programming section 4.1
library(dslabs)
data(na_example)
ifelse(sum(is.na(na_example)) > 200, print("too many"), print("under control"))
any(na_example)
for(i in 1:5) { print(i)}
identical(22,11*2)

# final assessment R
library(dslabs)
data(heights)
head(heights)
biasvec <- ifelse(heights$sex=="Female",1,2)
sum (biasvec)
totht <- ifelse(heights$height > 72,heights$height,0)
mean(totht)

inches_to_ft <- function(x){
  x/12
}
inches_to_ft(144)

shortppl <- ifelse(heights$height<60,1,0)
sum(shortppl)


