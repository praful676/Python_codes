
?vector

## Vector



a<-11 
a=11
a
print(a)
a<-"PUNE"
a
NUMBER1


NUM1=14
NUM1+10
NUM1="14"
NUM1+10
?class
class(NUM1)


NUM4<-c(10,11,12)
NUM5<-c(110,111,112)
NUM4+NUM5
class(NUM4)
NUM4*NUM5


num6 <- c(10,20,30)
num7 <- c(1,2,3,4,5,6)
num6+num7
num6*num7
num6-num7

num8 <- c(1,2,3,4,5)
num6+num8  ##this will give error as longer object length is not in multiple of shorter object
num6*num8  ##this will give error as longer object length is not in multiple of shorter object

num9 <- 10
num9+num8
num9*num8
num9/num6
num7/num9

num9 <- c(10)

#VARIABLES IN R
#VECTOR
#DATA frame
#Matrix
#array
#LIST

?data.frame



id <- c(1,2,3,4,5,6,7,8,9,10)
age<-c(30,31,34,40,41,51,21,29,25,26)
salary<-c(100,101,102,103,104,105,1000,1100,500,600)
emply_data<-data.frame(id,age,salary)
emply_data
head(emply_data) ##to see top 6 records
tail(emply_data) ##to see last 6 records


summary(emply_data) ##summary of every column

#ctrl+l to clear log

emply_data[c(1:4),]  ##this will display rows from 1 to 4, where ":" means to

emply_data[c(1,2,3,4),c(1,2)]  ##with this first 4 rows and first two columns are displayed

emply_data[c(1,2,3,4,9),c(1,2)] ##with this 1 to 4 and 9th rows as well as column 1 and 2 displayed
emply_data[c(1,2,3,4,9),c(1,3)] ##with this 1 to 4 and 9th rows as well as column 1 and 3 displayed

##tablename[rowref i.e. c(1,2,3..etc), colref i.e. c(1,2,3..)]

emply_data[c(1,2,3,4),c(1,2,3)]
emply_data[c(1:4),] ##if we want to display all columns it is not required to give ref just give ,
## rowref can also be denoted as 1:4 i.e 1st to 4th row

View(emply_data) ## to view table in row and column format inside grid and as separate tab

View(iris)
dim(iris) ##used to see dimension i.e. how may rows and columns
dim(emply_data)


##create a copy of table
iris1 <- iris

##to display records from 1st to 25 ,80 to 100 and 110 to 150 as well as all columns 
iris1[c(1:25 ,80:100 ,110:150),]

summary(iris1) ## if data type is numeric then we will get min, 1st quartile ETC ELSE IT WILL SHOW THE COUNT OF STRING VALUES
View(mtcars)
summary(mtcars)

View(iris1)
colnames(iris1)  ##name of the columns

nrow(iris1) ##show number of rows
ncol(iris1)##show number of columns

emply_data$id ## to select specific column

emply_data$salary

mean(emply_data$id) ##to calculate mean
median(emply_data$id) ## to calculate mean

sum(emply_data$id) ## to sum the column

## adding a column in emply_data
## cbind is used to add column in dataframe
## to add column first we have to declare the column as vector and assign the values equal to the total records / observation in that dataframe

exp <- c(2,3,4,6,2,4,10,11,12,14)
emply_data <- cbind(emply_data,exp)
## if at the time of adding column if we have not assigned it with newtable or dataframe name and submitted the expression more than once, column will be added multiple times in dataframe.
## to avoid this we have to give different dataframe name while adding column

emply_data1 <- cbind(emply_data,exp)

emply_data1

emply_data1 <- cbind(emply_data1,exp)

emply_data1

View(emply_data)

##adding a row in emply_data
## if at the time of adding row, if we have not assigned it with newtable or dataframe name and submitted the expression more than once, row will be added multiple times in dataframe.
## to avoid this we have to give different dataframe name while adding row

new_epl <- c(11,34,100,14)
emply_data2 <- rbind(emply_data1,new_epl)
emply_data2

## to remove table or delete it


rm(emply_data1)
## to remove column or row use '-'
emply_data1
emply_data1[,-4]  ##this is only to display

emply_data1 <- emply_data1[,-4] ## with this it will save the table (after deleteing the 4th column)
emply_data1


emply_data2 <- emply_data1[-11,] ## with this it will save the table (after deleteing the 11th row)
emply_data2


emply_data1 <- emply_data1[-4,-4] ## with this it will save the table (after deleteing the 4th row and colum)

emply_data1


##factor

emply_data1$id   <- factor(emply_data1$id)
summary(emply_data1)

gender <- c(1,1,1,1,0,0,0,1,0,1)
emply_data <- cbind(emply_data,gender)
emply_data
summary(emply_data)
factor(emply_data$gender) ## with factor we are converting our numeric var into char ,
##it will for display only
emply_data$gender <- factor(emply_data$gender)## with factor we are converting our numeric 
##var into char ,it will save it to table
summary(emply_data)
emply_data<-emply_data[,-5]

##rename column

colnames(emply_data)[2] <- "new_age"  ##rename the column name

summary(emply_data)

colnames(emply_data)[c(1,3)] <- c("emp_idd","emp_salg")  ##rename multiple column name at the same time

colnames(emply_data) ##to display columns

##corellation between variables and that to if it is +vely corelated or -vely corelated
## if it is near of 1 then the correlation is +vely corelated
## if it is near of -1 then the correlation is -vely corelated

cor(mtcars)

?mtcars

?cor
??cor

cor(iris) ## this will show error as in iris dataframe one column i.e. species is having char values, if we want to see the corellation for this dataframe we have to choose only column having numeric values see below

summary(iris)

cor(iris[,c(1:4)])


##or

iris2 <- iris[,c(1:4)]
cor(iris2)


?iris 


## to read or import the csv file in r
##where cr is new dataframe that is created by reading raw csv file
##read.csv is keyword where .csv is extension

cr <- read.csv("F:/R Data Science/datasets/CreditRisk.csv")

summary(cr)
View(cr)
dim(cr)
cr
?cr

##quantile
##with quantile function we can see 1st quantile i.e. 25th quantile 
##also it will display 2st quantile i.e. 50th quantile i.e. median 
##also it will display 3st quantile i.e. 75th quantile
##also it will display 100th quantile

quantile(cr$ApplicantIncome)
median(cr$ApplicantIncome)

##with the help of probs option we can change the default range of display of quantile 
##i.e. 0%,25%,50%,75%and100% to any range as shown below

quantile(cr$ApplicantIncome, probs = c(.1, .2,  .3 ,.4,.5,.6,.7,.8,.9,1)  )

quantile(cr$ApplicantIncome, probs = c(.1, .2,  .3 ,.4,.5,.6,.7,.8,.9,.99,1)  )


install.packages("dplyr")
library(dplyr)
install.packages("pillar")

##filter
##with filter we can filter i.e. choose only required records as below
##mtcars is dataframe name and disp is column name and we want choose only those records where disp is equal to 160


?filter
help(filter)

mtcars
filter_exm <- filter(mtcars, disp==160)
filter_exm

View(cr)

df1 <- filter(cr , (ApplicantIncome > 25000) & (Gender == "Male"))
df1

##select
##where cr is dataframe name and other are column names

df2 <- select(cr,ApplicantIncome, Gender, Education)
df2
View(df2)

#####################################################################################################
## date :  22JUN2019 ##
##mutate
##Mutate Function is used to add a column on the basis of some conditions
library(dplyr)

?mutate
##ifelse

cr<- mutate(cr, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
cr<- mutate(cr, Loan_Status1 = ifelse(Loan_Status == "N",1,0))

summary(cr)
View(cr)

##Nested ifelse

cr<- mutate(cr, Property_Area1 = ifelse(Property_Area == "Rural",1,ifelse(Property_Area == "Semiurban",2,3)))
summary(cr)
View(cr)

cr$Property_Area1 <- factor(cr$Property_Area1)


## if we want to convert multiple Unique record into number or numeric then we have to use below code
## combination of as.factor and as.numeric

cr$Married <- as.factor(as.numeric(cr$Married))

summary(cr)
View(cr)

## na.omit command is used to omit all null values i.e. it will remove all the records or rows which contains na values of any of the columns (here in r where ever there is na value that mean null value)

cr <- na.omit(cr)
summary(cr)

cr$Married <- as.factor(as.numeric(cr$Married))


## SAMPLING (Train and Test)

##Train - to build the model
##Test - to test the model i.e. makeing prediction

cr <- read.csv("F:/R Data Science/datasets/CreditRisk.csv")

sample_cr <- sample(2, nrow(cr), replace = TRUE, prob = c(.8 , .2))

## where 2 is number of parts we have to make of out data
## nrow is consider all rows
## where replace=TRUE is says random sampling
## prob stands for probability i.e. how to break the 2 samples or 2 parts in terms of percentage
## even if we are providing 0.8 means 80% and 0.2 as 20% but actual data parts are not excat with same %
## with this command in sample_cr it will store values as 1 and 2 (if sample command is used for more than 2 parts suppose 3 then it will store values 1,2 and 3 )for every rows or records that are present in dataframe


sample_cr

sample_cr <- sample(3, nrow(cr), replace = TRUE, prob = c(.6 , .2 , .2))

sample_cr

## creating two dataframes as train and test

sample_cr <- sample(2, nrow(cr), replace = TRUE, prob = c(.8 , .2))

cr_train <- cr[sample_cr == 1,]
cr_test <- cr[sample_cr == 2,]
dim(cr)
dim(cr_train)
dim(cr_test)

sample_cr1 <- sample(2, nrow(cr), replace = TRUE, prob = c(.8 , .2))

771/981
210/981


#sample_cr1

cr_train1 <- cr[sample_cr1 == 1,]
cr_test1 <- cr[sample_cr1 == 2,]

dim(cr)
dim(cr_train1)
dim(cr_test1)
dim(cr)


##table function gives us representation of catagories i.e. column
## here it is one diamensional table
## table function shows category wise count or values
table(cr$Gender)

table(cr$Loan_Status)

##two dimensional table

table(cr$Gender ,cr$Loan_Status)

View(mtcars) 

table(mtcars$am ,mtcars$gear)

?mtcars


##arrange function is used to sort the column
##where mtcars is table name and disp is column name
## by default columns are sorted ascending
## to sort it in descending order we have to use arrange(tablename,desc(columnname))

arrange(mtcars, disp)

?arrange ##help on function

arrange(mtcars, desc (disp))




### matrix
## here aa is vector
## nrow is number of rows in matrix
## ncol is number of column in matrix
## bydefault it is filling by columns first
## if we want to fill row first then we have to use byrow=TRUE


aa <- c(45,2,3,55,6,99,577,442,234,20)
matt <- matrix(aa, nrow=2, ncol=5)

matt

matt1 <- matrix(aa, nrow=2, ncol=5, byrow=TRUE)

matt1

matt2 <- matrix(aa, nrow=6, ncol=4, byrow=TRUE) ##this will give error as it is not multiple or sub-multiple of number of values in vector but still stores the values in matrix but the result is not desired matrix

matt2

##determinant
##determinant of matrix 2 x 2 is nothing but the multiplication of digonal numbers and then difference of these two results i.e. result of 1st multiplication - 2nd multiplication

a<- c(7,3,4,5)
b<- c(1,11,13,67)


mat1 <- matrix(a, nrow=2,ncol=2)
mat2 <- matrix(b, nrow=2,ncol=2)
mat1
mat2
det(mat1)
det(mat2)

##where mat1 is 7   4
##              3   5
## 1ST Multiplication is 7*5 = 35
## 1ST Multiplication is 4*3 = 12
## so determinant for this matrix is 35-12 = 23

##where mat1 is 1   13
##              11  67
## 1ST Multiplication is 1*67 = 67
## 1ST Multiplication is 13*11 = 143
## so determinant for this matrix is 67-143 = -76



?det
help(det)

unlist(det(mat1))

?unlist


##a + 2b +2c = 20
##2a + 5b +8c = 80
##6a + 7b +9c = 190
## find the values of a, b and c such that all three equations get solved
coff <- c(1,2,2,2,5,8,6,7,9) ##where these numbers are multiplication factor in equation

values <- c(20,80,190) ## where these numbers are result of the equation

aa <- matrix(coff, nrow=3, ncol=3, byrow = TRUE)  ##matrix aa is created considering column of matrix denotes a ,b and c multipliers and rows denotes each equations multipliers

bb <- matrix(values, nrow=3, ncol=1)
abc <- solve(aa,bb)
abc ##(gives the values of the a,b,c)

a=35.29412
b=-23.52941
c=15.88235

+20+160+1140
1320/35.29412



35.29+2*(-23.53)+2*(15.88)
2*(35.29)+5*(-23.53)+8*(15.88)
6*(35.29)+7*(-23.53)+9*(15.88)

?solve

### array
## array is nothing but collection of matrix
##dim denotes dimensions
## where first 2 indicates how many columns, second 2 indicates how many rows are there in the matrix that are getting created with this array and third 2 indicates number of matrices to be created.



vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14)
result <- array(c(vector1,vector2), dim=c(2,2,2))
result

vector3 <- c(5,9,3,10,11,12,13,14)
result1 <- array(vector3, dim=c(2,2,2))
result1


vector4 <- c(1,2,3,4,5,6,7,8,9,10,11,12)
result2 <- array(vector4, dim=c(2,3,3))
result2

vector4 <- c(1,2,3,4,5,6,7,8,9,10,11,12)
result2 <- array(vector4, dim=c(2,3,3))
result2

?array

## to conver data.frame i.e. dataset or table  to matrix 
## and convert matrix to data.frame i.e. dataset or table

cr <- read.csv("F:/R Data Science/datasets/CreditRisk.csv")

mat3 <- as.matrix(cr)
class(mat3)

cr<-as.data.frame(mat3)
class(cr)

##list is a collection of any form of data i.e. (matrix, vector, df, list,....ect) that we are created

list1 <- list(cr, mat1, mat2, vector1)
list1

##---------------------------------------------------------------------------------


##CHARTS


num1 <- c(1,2,3,4,5,6,7,8) ##vector

plot(num1) ##scattered plot with this only x axis is significant there is no signficance of y-axis


squr <- c(1,4,9,16,25,36,49,64)

plot(num1,squr) ## with this both the x and y axis is used. where values of y depends on x

## in graph values of y-axis is always depends on values of category of x-axis
## for eg. if age and height age should be on x-axis and height should be on y-axis
## as height is depends upon age.


mtcars
## perparing grap useing table
## here main = '' is title of graph
## xlab and ylab is name of x axis variable and y-axis variable
## col is used for colours

plot(mtcars$cyl,mtcars$disp,main='cyl vs disp', xlab='cyl', ylab='disp')

plot(mtcars$cyl,mtcars$disp,main='cyl vs disp', xlab='cyl', ylab='disp', col='red')

?plot

## create the boxplot
## box plot gives max, 75th quarantile, mean, 25th quarantile and min
## also used to catch outliers

boxplot(mtcars$disp)

?boxplot
help(bxp)

cr <- read.csv("F:/R Data Science/datasets/CreditRisk.csv")

boxplot(cr$ApplicantIncome) ## in this boxplot the circles shown is outliers

abc=boxplot(cr$ApplicantIncome) ##outliers get stored in abc
abc ## print this in result shown in consol it will show $out is outliers


#####################################################################################################
## Date : 23JUN2019 ##

library(dplyr)

##Paste Function is used for concatenation

a=10
b=20
paste(a,b)
?paste


## Pie chart ##
##Pie chart represent categorical representation

gdp <- c(19.4,11.8,4.8,3.4,2.5,2.4)
countries <- c('US','CHINA','JAPAN','GERM','UK','INDIA')
gdp_pie <- pie(gdp,labels = countries, main = 'gdp distribution')

##calculation of percentage manual
19.4+11.8+4.8+3.4+2.5+2.4  ##manual addition

19.4/44.3
11.8/44.3
4.8/44.3
3.4/44.3
2.5/44.3
2.4/44.3

countryper<- c(43.7,26.6,10.8,7.6,5.6,5.4)

##calculation of percentage with functions

sum_gdp <- sum(gdp)  ## addition with sum function
perc_gdp <- (gdp/(sum_gdp)*100) ##percentage with calculation
perc_gdp <- round(perc_gdp,1) ## round function 


gdp_pie <- pie(gdp,labels = paste(countries, countryper, '%'), main = 'GDP Distribution')
gdp_pie <- pie(gdp,labels = paste(countries, perc_gdp, '%'), main = 'GDP Distribution')
gdp_pie <- pie(gdp,labels = paste(countries, round((gdp/sum(gdp))*100,2), '%'), main = 'GDP Distribution')

?pie

## Histogram
## it is used to see if your data is normally distributed or not
## range vs frequency i.e. numbers or count
## on x-axis range and y=axis numbers
## it is on continuous data

hist(mtcars$disp)
hist(mtcars$mpg)
View(mtcars)
dim(mtcars)
hist(mtcars$disp,20)

cr <- read.csv("F:/R Data Science/datasets/CreditRisk.csv")
hist(cr$ApplicantIncome)

?hist
##kernel density plot or density plot

plot(density(mtcars$disp))


plot(density(cr$ApplicantIncome))

##Bar plot
## categorical data
## here legend is sub function
## with col we are able to specify the colours


abc<-table(mtcars$gear)

barplot(abc)

barplot(abc,xlab="Number of Gear",ylab="Count of Cars by Gear",main="Gear Vs Count",col=c("red","green","blue"),legend=rownames(abc))


## R-Basics ##

##Conditional statements
##loops
##user defined functions


##conditional statements
##here in if else 'else' is always connected with '}' i.e. '}else'

x <- 4
if ( x>0)
{
  print("Positive number")
}else
{
  print("Negative number")
}


x <- -3
if (x>0)
{
  print("Positive number")
}else
{
  print("Negative number")
}


##nested if else
## there is no limit how many nested if we can use
aa <- 9

if(aa<10)
{
  print("inside the if part")
}else if(aa==10)
{
  print("inside the else if part")
}else
{
  print("inside the else part")
}


##loops
##for
##while
##repeat

##while
i = 1
while(i<10){
  print(i)
  i=i+1
}

##repeat

a = 1
repeat
{
  print(a)
  a=a+1
  if (a>10)
    break
}


## for loop

cities = c('mumbai','pune','delhi')

for( i in cities)
{
  print(i)
}


##create sequance of number 1 to 50
## find out even and odd numbers
## for finding mod of any number syntax is num1%%num2

b<-seq(1:50)

for (val in b)
{
  if ((val%%2)==0)
  {
    print(paste(val, "is even Number"))
  }else
  {
    print(paste(val, "is odd Number"))
  }
  
}

#####################################################################################################

##user defined function
##add_number
a=10
b=15
add_number <- function(a,b){
  ab=a+b
  print(ab)
}

add_number(5,6)  ##call function

## '<<-' we can create global variable which we can use outside the function also

add_num <- function(a1,a2){
  a3 <<- a1+a2
  ab = a1-a2
  print(ab)
  return(a3)
}

add_num(20,30)

print(ab)  ##will give error as object not found as ab is not global veriable as this veriable is created inside the add_num function.
print(a3) ## this will print the value of a3 as with the help of <<- we can create global veriable which we can access it outside the function.


##user defined function for factorial
##where argument should be +ve integer


fact <- function(a)
{
  if(a<0){
    print("please insert +ve number")
  }else
  {
    i=1
    b=1
    repeat
    {
      b=b*i
      i=i+1
      if (i>a)
      {print(b)
        break}
    }
  }
}

fact(5)  

##apply function
##where 1 is row and 2 is column
## where iris1 is dataframe
##mean is function

iris1<-iris[,c(1:4)]
iris2<-iris[,-5]

apply(iris1,2,mean)

apply(iris2,2,mean)

apply(iris1,1,mean)

apply(iris[,c(1:4)],2,mean)



dim(iris1)
View(iris1)


##tapply
##where t stands for tiered

age <- c(30,31,32,33,34,35)
gender <- c('m','f','m','m','f','f')

tapply(age,gender,mean)


tapply(iris$Sepal.Length,iris$Species,mean)
tapply(iris$Sepal.Length,iris$Species,min)
tapply(iris$Sepal.Length,iris$Species,max)
tapply(iris$Sepal.Length,iris$Species,sum)


##aggregate function
##representation of sum in terms of matrix for list of categories
## takes input in the form of list

aggregate(iris[,c(1:4)],list(iris[,5]),sum)
aggregate(iris[,c(1:4)],list(iris[,5]),mean)



##to see the default path
getwd()

rm(list=ls())

## to directly use column then we have to use attach(dataframe name)
## detach() is used to detach
attach(cr)
detach(cr)



## linear regression
## liner regression is supervised learning
## will do predictions / training and testing
## where dependent veriable (y-axis) must be numeric and continuous it can not be in range
## independent variable and dependent variable
## x is independent variable and always numeric and in range or continuous
## y=mx+c
## y=beta0+beta1*x1+error

################################################################################################
## Date : 29-jun-2019 ###

## linear regression


## Assumptions
## 1 there exists linear relationship between x and y i.e. between dependent and independent variable
## linear relationship means y=mx+c (power range of x may vary from 0.5 to 2or3)
## 2. there is minimum multicolinearity among my x variables.
## y=beta0+beta1x1+beta2x2+beta3x3+beta4x4
## if one variable on x is increasing with that the other variables on x is also increasing then there is maximum/high multicolinearity exist, then our predicted y value is also on higher side i.e. far away from actual which is not good.
## e.g. production of wheat
## y-production--x=area --- x=water --- x=fertilizer --- x=pesticide--
##  100           50          60           5              10
## here in this case if area increases production will increase but at the same time water, fertilizer and pesticide consumption will increase 
## 3. Error terms are normally distributed and there is no pattern among them.
## error is difference between actual and predictions
##    x         y     (4 people)
## income --- saving
## 1lacs        +-5000
## 5lacs        +-50000
## 10lacs       +-300000
## 15lacs       +-500000
## 25lacs       +-10lacs
## 1cr          +-50lacs
## 5cr          +-1cr
## as per above example as the value of x is increaseing predictions are also differs and away from linear line
## 4. homoscedasticity : - variance around the regression line is same for all the predicated values


##y=beta0+beta1x1+beta2x2+beta3x3+beta4x4+ ----- +error


View(mtcars)
dim(mtcars)
summary(mtcars)
## where mpg is dependent and all others are independent variables
##lm is linear regression
## mpg is traget variable
## ~. take all the independent variable columns of x axis
## ~ cyl+disp+hp in this case only reffered three columns are taken for dataframe as independent variables
model2 <- lm(mpg ~ cyl+disp+hp, data=mtcars)
model1 <- lm(mpg ~., data=mtcars)

summary(model1)

##lower the p value (i.e. probability) more significant is that variable 
## we have to take more significant variables next time we make the model and 
## multiple r-squared is nothing but r-square
## degrees of freedom : if we have five variables then we have our degree of freedom is 4 variable
## e.g. a+b+c+d+e=60 then we can assign random values for any four variables but for 5th variable we have to calculate it 


## adjusted r-square
## n is number of rows or obs
## k is number of x variables i.e. columns
## value of n is always greater then k
## value of ajdRsquare is between 0 to one
##if we take r-square and n is fixed value of adjusted r-square is increasing
## value of r-square is keep on increaseing, if number of variables get increaseing i.e. (k is more then value of r-square is increased)
##i.e. if number of k decrease then value of r-square decrease

##cons of rsquare if we keep on adding more variables our rsquare is getting increasing which may not be correct representation

## adjsquare = ((1-r))

##model1 is with all 11 variables
##model2 is with all 5 significant variables
## if we see the summary of model1 then the -ve coefficient means mpg will be less if wt is increase if "am" increase mpg decreases

model2 <- lm(mpg ~ wt+am+qsec+disp+hp, data=mtcars)
summary(model2)

model3 <- lm(mpg ~ wt+am+qsec, data=mtcars)
summary(model3)


model4 <- lm(mpg ~ wt+am+qsec+disp+hp+cyl+drat+gear, data=mtcars)
summary(model4)



pred<-predict(model2,mtcars)
pred

pred0<-predict(model1,mtcars)
pred0

model6 <- lm(mpg ~ wt+am+qsec+disp+hp, mtcars)
summary(model6)

pred1<-predict(model6,mtcars[,c(2:11)])
pred1
## for prediction values of y it is not required to have value of y in test dataset
pred_actual <- data.frame(pred,mtcars$mpg)
pred_actual
colnames(pred_actual)=c("Predicted","Actual")
pred_actual


################################################################################################
## Date : 30-jun-2019 ###


mtcars1 <- read.csv("F:/R Data Science/datasets/MTCARS1.csv")
mtcars2<-mtcars1[,2:13]
View(mtcars2)
dim(mtcars2)
summary(mtcars2)
mtmod1 <- lm(mpg ~., data=mtcars2)
summary(mtmod1)

predmtmod1<-predict(mtmod1,mtcars2[,c(2:12)])
pred_actual <- data.frame(predmtmod1,mtcars2$mpg)
pred_actual
colnames(pred_actual)=c("Predicted","Actual")
pred_actual ## this model is perfect fit as it shows r-squared as 1 and adjusted r square as 1, which means there must be some problem we have to see that why this happened
## in this case quant column is derived from mpg itself, quant=mpg/10 hence the values of quant is shown more significant


mtmod2 <- lm(mpg ~ quant, data=mtcars2)
summary(mtmod2) ## this is also showing same result as previous model mtmod1




### Steps in model bulding ###
## 1. identify the problem statement
## 2. do the data mining on the basis of problem statement
## 3. do data cleaning / preparation
## 4. sampling
## 5. model bulding
## 6. testing / prediction
## 7. if required i.e. if the model is not correct then again we have to start from 3rd or 4th step depending upon the situations.

library(dplyr)

##createing data.frame by using read.csv
lungcapdata1 <- read.csv("F:\\R Data Science\\datasets\\LungCapData.csv")
View(lungcapdata1)
summary(lungcapdata1)
class(lungcapdata1)

## lungcapacity = lungcap
## lungcapacity is my target


## data cleaning
## as we required all data in numeric we have to convert Smoke Gender and Caesarean in Numeric with mutate

##assigning Numbers to categories
lungcapdata1 <- mutate(lungcapdata1,Smoke1 = ifelse(Smoke == "no",0,1))
lungcapdata1 <- mutate(lungcapdata1,Gender1 = ifelse(Gender == "female",0,1))
lungcapdata1 <- mutate(lungcapdata1,Caesarean1 = ifelse(Caesarean == "no",0,1))

## as we required all data in numeric we have to filter the data so we dont want Smoke Gender and Caesarean as we created new veriables where 

##Filtering the data on the basis of columns
lungcapdata2 <- lungcapdata1[,c(1,2,3,7,8,9)]
head(lungcapdata2)
summary(lungcapdata2)

##Factorising the data
lungcapdata2$Smoke1 <- factor(lungcapdata2$Smoke1)
lungcapdata2$Gender1 <- factor(lungcapdata2$Gender1)
lungcapdata2$Caesarean1 <- factor(lungcapdata2$Caesarean1)
summary(lungcapdata2)


## Random Sampling ###
lcn_sam <- sample(2,nrow(lungcapdata2),replace=TRUE, prob=c(.8,.2))
lcn_train <- lungcapdata2[lcn_sam == 1, ]
lcn_test <- lungcapdata2[lcn_sam == 2, ]
summary(lcn_train)

##Building Model
modlungcap1 <- lm(LungCap ~.,data=lcn_train)
summary(modlungcap1)
##height and age having +ve impact and smoke1, caesarean1 is having -ve impact

##building second model after removeing Caesarean column from previous model
modlungcap2 <- lm(LungCap ~ Age+Height+Smoke1+Gender1 ,data=lcn_train)
summary(modlungcap2)

## even if there is very small difference in above two models we are going with 2nd model because there are less veriables and it is easy to control less veriables (1st model is haveing 5 veriable and 2nd is having 4 veriables)

##prediction as per 1st model
pred_actual <- predict(modlungcap1,lcn_test)
pred_actual <- data.frame(pred_actual,lcn_test$LungCap)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 

##calculating difference between predicted and actual
diff<- pred_actual$Predicted - pred_actual$Actual

##calculating RMSE(Root Mean Square Error)
rmsediff<-sqrt(mean(diff^2))

##prediction as per 2nd model
pred_actual1 <- predict(modlungcap2,lcn_test)
pred_actual1 <- data.frame(pred_actual1,lcn_test$LungCap)
colnames(pred_actual1)=c("Predicted","Actual")
pred_actual1 

##calculating difference between predicted and actual
diff1<- pred_actual1$Predicted - pred_actual1$Actual
rmsediff1<-sqrt(mean(diff1^2))  ##Root mean squre to understand we have to create at least two model so that we can say which rmse is better and so as which model is better, lower the rmse value better is the model


## adding column diff to pred_actual dataframe with new name pred_actual_diff

pred_actual_diff <- data.frame(pred_actual,diff,rmsediff)
pred_actual_diff

pred_actual_diff1 <- data.frame(pred_actual1,diff1,rmsediff1)
pred_actual_diff1


### identity the outliers using boxplot for LungCap veriable
boxplot(lungcapdata2$LungCap)

outlierlungcap <-boxplot(lungcapdata2$LungCap)
outlierlungcap
outlierlungcap$out

##manual way to remove outlier from dataframe, where 150 is row number
lungcapdata2 <- lungcapdata2[-150,]
dim(lungcapdata1)
dim(lungcapdata2)

dim(lungcapdata2)

##remove outlier from dataframe with the help of filter function, where 0.507 is value of LungCap
lungcapdata2 <- filter(lungcapdata2, LungCap != 0.507)
lungcapdata2
dim(lungcapdata2)
View(lungcapdata2)

##checking for outlier Age veriable with respect to Lungcapacity
boxplot(LungCap ~ Age, data=lungcapdata2)
outlierlungcap1<-boxplot(LungCap~Age, data=lungcapdata2)
outlierlungcap1
##output of above outlierlungcap1 shows different options like $out $group $names
##where $out shows the outlier values of lungcapacity (variable lungcap) and
## $group shows the position of age values on x-axis and $names shows the values for Age veriable on x-axis
## i.e. in this case outlier value of lungcapcity 1.850 corresponds to 6th position of Age veriable on x-axis i.e. age=8

## Removing Outliers 
## after 1st output
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 1.850) & (lungcapdata2$Age==8)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 1.625) & (lungcapdata2$Age==8)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 10.200) & (lungcapdata2$Age==9)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 3.650) & (lungcapdata2$Age==12)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 11.950) & (lungcapdata2$Age==12)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 3.450) & (lungcapdata2$Age==13)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 5.675) & (lungcapdata2$Age==16)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 6.150) & (lungcapdata2$Age==16)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 14.375) & (lungcapdata2$Age==18)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 14.550) & (lungcapdata2$Age==18)))

##2nd checking for outlier Age veriable with respect to Lungcapacity
boxplot(LungCap ~ Age, data=lungcapdata2)
outlierlungcap1<-boxplot(LungCap~Age, data=lungcapdata2)
outlierlungcap1

## after 2nd output
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 1.900) & (lungcapdata2$Age==8)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 3.425) & (lungcapdata2$Age==9)))
lungcapdata2 <- filter(lungcapdata2, !((LungCap == 6.450) & (lungcapdata2$Age==16)))


##3rd checking for outlier Age veriable with respect to Lungcapacity
boxplot(LungCap ~ Age, data=lungcapdata2)
outlierlungcap1<-boxplot(LungCap~Age, data=lungcapdata2)
outlierlungcap1

##Building model again after removing outliers
lcn_sam <- sample(2,nrow(lungcapdata2),replace=TRUE, prob=c(.8,.2))
lcn_train <- lungcapdata2[lcn_sam == 1, ]
lcn_test <- lungcapdata2[lcn_sam == 2, ]
summary(lcn_train)

modlungcap3 <- lm(LungCap ~ Age+Height+Smoke1+Gender1 ,data=lcn_train)
summary(modlungcap3)


## to calculate higher side outlier formula = Q3 + 1.5(Q3-Q1)
## to calculate lower side outlier formula = Q3 - 1.5(Q3-Q1)
## where q3 and q1 are quartile


filter(lungcapdata2, LungCap == 3.650)

lungcapdata3 <- lungcapdata2  ; dim(lungcapdata3)
length(unique(lungcapdata3$LungCap))

### Root Mean Square Error (RMSE) ###
##              A                     B                       error     error
## Actual  Predicted   error in A Predicted   error in B    Square A   Square B
##    20      19          1         20            0             1          0 
##    25      24          1         21            4             1         16
##    24      22          2         24            0             4          0
##    30      33          3         25            5             9         25
##    40      38          2         40            0             4          0
##Total----->             9                       9            19         41
## as per above when we see errors in A and errors in B the sum is same in such cases we make square of errors and see the results, in this case model A is better.
##RMSE is used to catch the large errors
##lower the RMSE better is the model


## olx data
## people are sell  only cars
## where price is traget variable
## price of the vehicle is depend on brand, condition, fueltype, kms driven, model, transaction type, year of making (year)
## do not consider the model in this assignment and only top five brands to consider


##steps
##table brand
## select top 7 most brand
## after bulding model
## create user defined function should take all x values as input and predict price


##################################################################################################################

##Date : 06JUL2019  ###

library(dplyr)

## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxSuzuki<-olxcar1[olxcar1$Brand %in% c("Suzuki"),]

##adding columns by Converting categories in number format
olxSuzuki<- mutate(olxSuzuki, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxSuzuki)

##Factorising veriables
olxSuzuki$Conditionf <- factor(olxSuzuki$Conditionf)
olxSuzuki$Fuelf <-factor(olxSuzuki$Fuelf)
olxSuzuki$TransactionType <- factor(olxSuzuki$TransactionType)

View(olxSuzuki)
summary(olxSuzuki)

olxSuzuki <-olxSuzuki[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxSuzuki), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxSuzuki[olxsample == 1,]
olx_test <- olxSuzuki[olxsample == 2,]
dim(olxSuzuki)
dim(olx_train)
dim(olx_test)

Suzukimod1 <- lm(Price ~., data=olx_train)
summary(Suzukimod1)

Suzukimod2 <- lm(Price ~ Year+Conditionf+Fuelf+TransactionType+KMs.Driven, data=olx_train)
summary(Suzukimod2)


pred_actual <- predict(Suzukimod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 


## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##olxcar1$Year1 <- 2019-olxcar1$Year

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxDaihatsu<-olxcar1[olxcar1$Brand %in% c("Daihatsu"),]

##adding columns by Converting categories in number format
olxDaihatsu<- mutate(olxDaihatsu, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxDaihatsu)

##Factorising veriables
olxDaihatsu$Conditionf <- factor(olxDaihatsu$Conditionf)
olxDaihatsu$Fuelf <-factor(olxDaihatsu$Fuelf)
olxDaihatsu$TransactionType <- factor(olxDaihatsu$TransactionType)
##olxDaihatsu$Year1 <- factor(olxDaihatsu$Year1)

View(olxDaihatsu)
summary(olxDaihatsu)

olxDaihatsu <-olxDaihatsu[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxDaihatsu), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxDaihatsu[olxsample == 1,]
olx_test <- olxDaihatsu[olxsample == 2,]
dim(olxDaihatsu)
dim(olx_train)
dim(olx_test)

Daihatsumod1 <- lm(Price ~., data=olx_train)
summary(Daihatsumod1)

Daihatsumod2 <- lm(Price ~ Year+Conditionf+TransactionType, data=olx_train)
summary(Daihatsumod2)


pred_actual <- predict(Daihatsumod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 

###############################################################################################################
## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##olxcar1$Year1 <- 2019-olxcar1$Year

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxToyota<-olxcar1[olxcar1$Brand %in% c("Toyota"),]

##adding columns by Converting categories in number format
olxToyota<- mutate(olxToyota, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxToyota)

##Factorising veriables
olxToyota$Conditionf <- factor(olxToyota$Conditionf)
olxToyota$Fuelf <-factor(olxToyota$Fuelf)
olxToyota$TransactionType <- factor(olxToyota$TransactionType)
##olxToyota$Year1 <- factor(olxToyota$Year1)

View(olxToyota)
summary(olxToyota)

olxToyota <-olxToyota[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxToyota), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxToyota[olxsample == 1,]
olx_test <- olxToyota[olxsample == 2,]
dim(olxToyota)
dim(olx_train)
dim(olx_test)

Toyotamod1 <- lm(Price ~., data=olx_train)
summary(Toyotamod1)

Toyotamod2 <- lm(Price ~ Year+Conditionf+TransactionType, data=olx_train)
summary(Toyotamod2)


pred_actual <- predict(Toyotamod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 

################################################################################################################

## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##olxcar1$Year1 <- 2019-olxcar1$Year

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxHonda<-olxcar1[olxcar1$Brand %in% c("Honda"),]

##adding columns by Converting categories in number format
olxHonda<- mutate(olxHonda, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxHonda)

##Factorising veriables
olxHonda$Conditionf <- factor(olxHonda$Conditionf)
olxHonda$Fuelf <-factor(olxHonda$Fuelf)
olxHonda$TransactionType <- factor(olxHonda$TransactionType)
##olxHonda$Year1 <- factor(olxHonda$Year1)

View(olxHonda)
summary(olxHonda)

olxHonda <-olxHonda[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxHonda), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxHonda[olxsample == 1,]
olx_test <- olxHonda[olxsample == 2,]
dim(olxHonda)
dim(olx_train)
dim(olx_test)

Hondamod1 <- lm(Price ~., data=olx_train)
summary(Hondamod1)

Hondamod2 <- lm(Price ~ Year+Conditionf+TransactionType, data=olx_train)
summary(Hondamod2)


pred_actual <- predict(Hondamod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 

################################################################################################################

## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##olxcar1$Year1 <- 2019-olxcar1$Year

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxNissan<-olxcar1[olxcar1$Brand %in% c("Nissan"),]

##adding columns by Converting categories in number format
olxNissan<- mutate(olxNissan, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxNissan)

##Factorising veriables
olxNissan$Conditionf <- factor(olxNissan$Conditionf)
olxNissan$Fuelf <-factor(olxNissan$Fuelf)
olxNissan$TransactionType <- factor(olxNissan$TransactionType)
##olxNissan$Year1 <- factor(olxNissan$Year1)

View(olxNissan)
summary(olxNissan)

olxNissan <-olxNissan[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxNissan), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxNissan[olxsample == 1,]
olx_test <- olxNissan[olxsample == 2,]
dim(olxNissan)
dim(olx_train)
dim(olx_test)

Nissanmod1 <- lm(Price ~., data=olx_train)
summary(Nissanmod1)

Nissanmod2 <- lm(Price ~ Year+Conditionf+TransactionType, data=olx_train)
summary(Nissanmod2)


pred_actual <- predict(Nissanmod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 
################################################################################################################

## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##olxcar1$Year1 <- 2019-olxcar1$Year

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxMitsubishi<-olxcar1[olxcar1$Brand %in% c("Mitsubishi"),]

##adding columns by Converting categories in number format
olxMitsubishi<- mutate(olxMitsubishi, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxMitsubishi)

##Factorising veriables
olxMitsubishi$Conditionf <- factor(olxMitsubishi$Conditionf)
olxMitsubishi$Fuelf <-factor(olxMitsubishi$Fuelf)
olxMitsubishi$TransactionType <- factor(olxMitsubishi$TransactionType)
##olxMitsubishi$Year1 <- factor(olxMitsubishi$Year1)

View(olxMitsubishi)
summary(olxMitsubishi)

olxMitsubishi <-olxMitsubishi[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxMitsubishi), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxMitsubishi[olxsample == 1,]
olx_test <- olxMitsubishi[olxsample == 2,]
dim(olxMitsubishi)
dim(olx_train)
dim(olx_test)

Mitsubishimod1 <- lm(Price ~., data=olx_train)
summary(Mitsubishimod1)

Mitsubishimod2 <- lm(Price ~ Year+Conditionf+TransactionType, data=olx_train)
summary(Mitsubishimod2)


pred_actual <- predict(Mitsubishimod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 

################################################################################################################

## Convert CSV in R Data.frame ##
olxcar <- read.csv("F:\\R Data Science\\datasets\\OLX_Car_Data_CSV.csv",na.strings = "")
View(olxcar)
dim(olxcar)
summary(olxcar)

##Checking Top 7 Brands
brandfreq<-data.frame(table(olxcar$Brand))
colnames(brandfreq)[c(1,2)] <- c("Brand","CountOfBrands")
brandfreq<-filter(arrange(brandfreq,desc(CountOfBrands)),Brand!="")
summary(brandfreq)
head(brandfreq,n=7)

##Selecting Required veriables only
olxcar1<-select(olxcar,Brand,Condition,Fuel,KMs.Driven,Price,Transaction.Type,Year)
View(olxcar1)

##olxcar1$Year1 <- 2019-olxcar1$Year

##removing na / Null records
olxcar1 <- na.omit(olxcar1)
dim(olxcar1)

##Filtering Brand
olxHyundai<-olxcar1[olxcar1$Brand %in% c("Hyundai"),]

##adding columns by Converting categories in number format
olxHyundai<- mutate(olxHyundai, Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))

summary(olxHyundai)

##Factorising veriables
olxHyundai$Conditionf <- factor(olxHyundai$Conditionf)
olxHyundai$Fuelf <-factor(olxHyundai$Fuelf)
olxHyundai$TransactionType <- factor(olxHyundai$TransactionType)
##olxHyundai$Year1 <- factor(olxHyundai$Year1)

View(olxHyundai)
summary(olxHyundai)

olxHyundai <-olxHyundai[,c(7:10,4:5)] 

olxsample <- sample(2, nrow(olxHyundai), replace = TRUE, prob = c(.8 , .2))

olx_train <- olxHyundai[olxsample == 1,]
olx_test <- olxHyundai[olxsample == 2,]
dim(olxHyundai)
dim(olx_train)
dim(olx_test)

Hyundaimod1 <- lm(Price ~., data=olx_train)
summary(Hyundaimod1)

Hyundaimod2 <- lm(Price ~ Year+Conditionf+TransactionType, data=olx_train)
summary(Hyundaimod2)


pred_actual <- predict(Hyundaimod1,olx_test)
pred_actual <- data.frame(pred_actual,olx_test$Price)
colnames(pred_actual)=c("Predicted","Actual")
pred_actual 

##################################################################################################################

### Function for predicting price

Cal_price <- function(Brand,Condition,Fuel,KMs.Driven,Transaction.Type,Year){
  
  onlinesale<<-data.frame(Brand,Condition,Fuel,KMs.Driven,Transaction.Type,Year)
  
  onlinesale<<- mutate(onlinesale, Brandf = ifelse(Brand == "Suzuki",6,ifelse(Brand == "Toyota",7,ifelse(Brand == "Honda",2,ifelse(Brand == "Daihatsu",1,ifelse(Brand == "Nissan",5,ifelse(Brand == "Mitsubishi",4,ifelse(Brand == "Hyundai",3,8))))))), Conditionf = ifelse(Condition == "New",1,2), Fuelf = ifelse(Fuel=="CNG",1,ifelse(Fuel=="Diesel",2,ifelse(Fuel=="Hybrid",3,ifelse(Fuel=="LPG",4,5)))), TransactionType = ifelse(Transaction.Type=="Cash",1,2))
  
  onlinesale$Conditionf <- factor(onlinesale$Conditionf)
  onlinesale$Fuelf <-factor(onlinesale$Fuelf)
  onlinesale$TransactionType <- factor(onlinesale$TransactionType)
  
  if (onlinesale$Brandf == 1) {
    pred_actual <- predict(Daihatsumod1,onlinesale)
    print(pred_actual)
  }else if (onlinesale$Brandf == 2) {
    pred_actual <- predict(Hondamod1,onlinesale)
    print(pred_actual)
  }else if (onlinesale$Brandf == 3) {
    pred_actual <- predict(Hyundaimod1,onlinesale)
    print(pred_actual)
  }else if (onlinesale$Brandf == 4) {
    pred_actual <- predict(Mitsubishimod1,onlinesale)
    print(pred_actual)
  }else if (onlinesale$Brandf == 5) {
    pred_actual <- predict(Nissanmod1,onlinesale)
    print(pred_actual)
  }else if (onlinesale$Brandf == 6) {
    pred_actual <- predict(Suzukimod1,onlinesale)
    print(pred_actual)
  }else if (onlinesale$Brandf == 7){
    pred_actual <- predict(Toyotamod1,onlinesale)
    print(pred_actual)
  }else {
    print("This model is not in list")
  }
}

Cal_price("BMW","Used","Petrol",2000,"Cash",2010)
onlinesale
##olxcar7b<-olxcar1[olxcar1$Brand %in% c("Suzuki","Toyota","Honda","Daihatsu","Nissan","Mitsubishi","Hyundai"),]


###################################################################################################################
## To remind after 4 classes
## Plots in linear reg also why not all the outliers are significant
## and Ridge Regression
## revision of outliers
###################################################################################################################

##Logistic Regression
## Regression techinique as we get answer in probabilities from o to 1
## Target veriable should take only two values 0 or 1 i.e. only two categories
## works on probability of odds e.g. if probability of  1 = 0.7 then  prob of 0 = 0.3
## ODDs = probability of occurrence of event (p)/compliment(probability of not occuring of event;)(1-p)

##logit equation
## login equation is also known as Log(odds)=ln(p/(1-p))
##=ln(p)-ln(1-p)

##p             0.5    0.75     0.9     0.99    0.9999       0.4
##log(p/(1-p))  0      1.098   2.197    4.59      9.2       -4.55



## at p=1 and 0 logit function is undefined.
## as the value of p increases value of log(p/(1-p)) keep on increasing to + infinity
## as the value of p Decreasing value of log(p/(1-p)) keep on decreasing to - infinity


##1. prediction
##2. marketing / sales campain to identify the good customers and offer them the loan
##3. more focus is on Y i.e. 1 that is loan is getting approved


Credit_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")

##1.problem statement
##2. data cleaning
##3. sampling
##4. build the model
##5. test

View(Credit_Risk)
head(Credit_Risk)
dim(Credit_Risk)
summary(Credit_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Credit_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Credit_Risk$LoanAmount[is.na(Credit_Risk$LoanAmount)]<-var1

var3<- mean(Credit_Risk$ApplicantIncome,na.rm = TRUE)
Credit_Risk$ApplicantIncome[is.na(Credit_Risk$ApplicantIncome)]<-var3

var4<- mean(Credit_Risk$CoapplicantIncome,na.rm = TRUE)
Credit_Risk$CoapplicantIncome[is.na(Credit_Risk$CoapplicantIncome)]<-var4

Credit_Risk$Credit_History[is.na(Credit_Risk$Credit_History)]<-0

##
Credit_Risk <- na.omit(Credit_Risk)

##Credit_Risk$Self_Employed[is.na(Credit_Risk$Self_Employed)]<-0

summary(Credit_Risk)
dim(Credit_Risk)

##factoring main dataframe
Credit_Risk<- mutate(Credit_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Credit_Risk<- mutate(Credit_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Credit_Risk<- mutate(Credit_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Credit_Risk<- mutate(Credit_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Credit_Risk<- mutate(Credit_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Credit_Risk<- mutate(Credit_Risk, Married1 = ifelse(Married == "No",1,0))

dim(Credit_Risk)
summary(Credit_Risk)
head(Credit_Risk)

##keeping required columns from main dataframe
Credit_Risk <- select(Credit_Risk,4,7,8,9,10,11,14,15,16,17,18,19)
dim(Credit_Risk)
head(Credit_Risk)

##Factor the variables

Credit_Risk$Loan_Status1 = factor(Credit_Risk$Loan_Status1)
Credit_Risk$Education1 = factor(Credit_Risk$Education1)
Credit_Risk$Self_Employed1 = factor(Credit_Risk$Self_Employed1)
Credit_Risk$newarea1 = factor(Credit_Risk$newarea1)
Credit_Risk$Gender1 = factor(Credit_Risk$Gender1)
Credit_Risk$Married1 = factor(Credit_Risk$Married1)

summary(Credit_Risk)

##Sampling
crs<- sample(2,nrow(Credit_Risk),replace = TRUE,prob = c(.8,.2))
train_crs <- Credit_Risk[crs == 1,]
test_crs <- Credit_Risk[crs == 2,]
dim(train_crs)
dim(test_crs)
summary(train_crs)
##Building Model
##in logistic regression we have to always specify family=binomial ie having only two values
##Loan_Status1 is target veriable
model_cr1 <- glm(Loan_Status1 ~.,family = binomial,data=train_crs)


##Prediction
pred_val  <- predict(model_cr1, test_crs, type="response")
pred_val

##Keeping predicted values in dataframe
pred_actual_df<-data.frame(pred_val,test_crs$Loan_Status1)

##converting it in 0 and 1
pred_actual_df<-mutate(pred_actual_df,pred_val=ifelse(pred_val>0.5,1,0))

##rename the columns
colnames(pred_actual_df) <- c('Predicted','Actual')


#confusion matrix 
tab = table(pred_actual_df$Predicted,pred_actual_df$Actual)
tab

##matrix
#   0   1
#0  24  6
#1  26  133

Acc = (24+133)/(24+133+26+6) ##manual calculation of accuracy


sum(diag(tab))/sum(tab) ## calculation with formula


summary(pred_actual_df)

##################################################################################################################
library(dplyr)

## do prediction on entire data
## df(pred,actual,prob,loanid)
##df(sort, desc(prob))

Credit_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")

##1.problem statement
##2. data cleaning
##3. sampling
##4. build the model
##5. test

View(Credit_Risk)
head(Credit_Risk)
dim(Credit_Risk)
summary(Credit_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Credit_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Credit_Risk$LoanAmount[is.na(Credit_Risk$LoanAmount)]<-var1

var3<- mean(Credit_Risk$ApplicantIncome,na.rm = TRUE)
Credit_Risk$ApplicantIncome[is.na(Credit_Risk$ApplicantIncome)]<-var3

var4<- mean(Credit_Risk$CoapplicantIncome,na.rm = TRUE)
Credit_Risk$CoapplicantIncome[is.na(Credit_Risk$CoapplicantIncome)]<-var4

Credit_Risk$Credit_History[is.na(Credit_Risk$Credit_History)]<-0

##
Credit_Risk <- na.omit(Credit_Risk)

##Credit_Risk$Self_Employed[is.na(Credit_Risk$Self_Employed)]<-0

summary(Credit_Risk)
dim(Credit_Risk)

##factoring main dataframe
Credit_Risk<- mutate(Credit_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Credit_Risk<- mutate(Credit_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Credit_Risk<- mutate(Credit_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Credit_Risk<- mutate(Credit_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Credit_Risk<- mutate(Credit_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Credit_Risk<- mutate(Credit_Risk, Married1 = ifelse(Married == "No",1,0))

dim(Credit_Risk)
summary(Credit_Risk)
head(Credit_Risk)

##keeping required columns from main dataframe
Credit_Risk <- select(Credit_Risk,1,4,7,8,9,10,11,14,15,16,17,18,19)
dim(Credit_Risk)
head(Credit_Risk)

##Factor the variables

Credit_Risk$Loan_Status1 = factor(Credit_Risk$Loan_Status1)
Credit_Risk$Education1 = factor(Credit_Risk$Education1)
Credit_Risk$Self_Employed1 = factor(Credit_Risk$Self_Employed1)
Credit_Risk$newarea1 = factor(Credit_Risk$newarea1)
Credit_Risk$Gender1 = factor(Credit_Risk$Gender1)
Credit_Risk$Married1 = factor(Credit_Risk$Married1)

summary(Credit_Risk)

##Sampling
crs<- sample(2,nrow(Credit_Risk),replace = TRUE,prob = c(.8,.2))
train_crs <- Credit_Risk[crs == 1,]
test_crs <- Credit_Risk[crs == 2,]
dim(train_crs)
dim(test_crs)
summary(train_crs)
##Building Model
##in logistic regression we have to always specify family=binomial ie having only two values
##Loan_Status1 is target veriable
model_cr1 <- glm(Loan_Status1 ~.,family = binomial,data=train_crs[,-1])
summary(model_cr1)
##Prediction
pred_val_prob  <- predict(model_cr1, Credit_Risk, type="response")
pred_val_prob

##Keeping predicted values in dataframe
pred_actual_df<-data.frame(Credit_Risk$Loan_ID, pred_val_prob,Credit_Risk$Loan_Status1)

##converting it in 0 and 1
pred_actual_df<-mutate(pred_actual_df,pred_val=ifelse(pred_val_prob>0.5,1,0))

##sorting dataframe
pred_actual_dfSorted<-arrange(pred_actual_df,desc(pred_val_prob))

View(pred_actual_dfSorted)
##rename the columns
colnames(pred_actual_dfSorted) <- c('LoanID','Probability','Actual','Predicted')


#confusion matrix 
tab = table(pred_actual_dfSorted$Predicted,pred_actual_dfSorted$Actual)
tab

##matrix
#   0   1
#0  24  6
#1  26  133

Acc = (24+133)/(24+133+26+6) ##manual calculation of accuracy


sum(diag(tab))/sum(tab) ## calculation with formula


summary(pred_actual_df)

##glm(y ~ . , data =     df[ , c(1:10 , 15 :20)])

#################################################################################################################
install.packages("party")
library(party)


##Decision Tree
##part of supervised learning
##classification techinque
##Prediction , train and test
##traget can have two or more classes or categories
##works on principal of entrophy
##i.e. how many homogeneous and hetrogeneous data is
##

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")
View(ctg)

summary(ctg)
## problem statement
##LB = beats per second
##AC = acceleration per second
##FM = fetal movement per second
##NSP = (Normal, Suspect, pathalogical)

##Taget veriable is NSP

##data cleaning
## y veriable should be factorised
ctg$NSP <- factor(ctg$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg[ctg_sample == 1,]
ctg_test <- ctg[ctg_sample == 2,]

##Building Model
ctg_dt <- ctree(NSP ~ LB+AC+FM, data = ctg_train)
summary(ctg_dt)

##making prediction
pred <- predict(ctg_dt, ctg_test)
pred

pred_df <- data.frame(pred,ctg_test$NSP)
pred_df
colnames(pred_df) <- c('predicted','actual')

colnames(pred_df)
tab = table(pred_df$predicted,pred_df$actual)
tab

sum(diag(tab))/sum(tab)

309/(309+30+0)

+41/(41+19+0)

+1/(24+4+1)

table(ctg$NSP)  
## result of this will show class imbalance as represention of class 1 is much more than class 2 and 3

176/(1655+295+176)
295/(1655+295+176)
1655/(1655+295+176)


## how to plot tree
## how to tune tree

##try to build decision tree on credit risk data


install.packages("dplyr")
library(dplyr)
install.packages("party")
find_rtools  
install.packages("installr")
installr::check.for.updates.R()
library(devtools)
install.packages("devtools")
find_rtools()

devtools::install_github("JohnCoene/echarts4r.assets")


rm(list=ls())

###################################################################################################################

##Decision Tree
##Credit Risk data frame

library(dplyr)
library(party)

Cr_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")

summary(Cr_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Cr_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Cr_Risk$LoanAmount[is.na(Cr_Risk$LoanAmount)]<-var1

var3<- mean(Cr_Risk$ApplicantIncome,na.rm = TRUE)
Cr_Risk$ApplicantIncome[is.na(Cr_Risk$ApplicantIncome)]<-var3

var4<- mean(Cr_Risk$CoapplicantIncome,na.rm = TRUE)
Cr_Risk$CoapplicantIncome[is.na(Cr_Risk$CoapplicantIncome)]<-var4

Cr_Risk$Credit_History[is.na(Cr_Risk$Credit_History)]<-0

##
Cr_Risk <- na.omit(Cr_Risk)

View(Cr_Risk)



##Factorising
Cr_Risk<- mutate(Cr_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Cr_Risk<- mutate(Cr_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Cr_Risk<- mutate(Cr_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Cr_Risk<- mutate(Cr_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Cr_Risk<- mutate(Cr_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Cr_Risk<- mutate(Cr_Risk, Married1 = ifelse(Married == "No",1,0))

summary(Cr_Risk)


##keeping required columns from main dataframe
Cr_Risk <- select(Cr_Risk,4,7,8,9,10,11,14,15,16,17,18,19)

##Factor the variables

Cr_Risk$Loan_Status1 = factor(Cr_Risk$Loan_Status1)
Cr_Risk$Education1 = factor(Cr_Risk$Education1)
Cr_Risk$Self_Employed1 = factor(Cr_Risk$Self_Employed1)
Cr_Risk$newarea1 = factor(Cr_Risk$newarea1)
Cr_Risk$Gender1 = factor(Cr_Risk$Gender1)
Cr_Risk$Married1 = factor(Cr_Risk$Married1)



CrRisk_sample <- sample(2,nrow(Cr_Risk),replace = TRUE, prob=c(.8,.2))
CrRisk_train <- Cr_Risk[CrRisk_sample == 1,]
CrRisk_test <- Cr_Risk[CrRisk_sample == 2,]

View(CrRisk_train)
##Building Model
CrRisk_dt <- ctree(Loan_Status1 ~., data = CrRisk_train)
summary(CrRisk_dt)

##making prediction on training
pred <- predict(CrRisk_dt, CrRisk_test)
pred

pred_df <- data.frame(pred,CrRisk_test$Loan_Status1)
pred_df
colnames(pred_df) <- c('predicted','actual')

colnames(pred_df)
tab = table(pred_df$predicted,pred_df$actual)
tab

sum(diag(tab))/sum(tab)

##making prediction on complete dataframe


table(Cr_Risk$Loan_Status1)  
## result of this will show class imbalance as represention of class 1 is much more than class 2 and 3

176/(1655+295+176)
295/(1655+295+176)
1655/(1655+295+176)

+228/(228+632)

+632/(228+632)


##################################################################################################################

## Date : 13JUL2019 ##

##Decision Tree
##How to plot tree

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")
View(ctg)

summary(ctg)
## problem statement
##LB = beats per second
##AC = acceleration per second
##FM = fetal movement per second
##NSP = (Normal, Suspect, pathalogical)

##Taget veriable is NSP

##data cleaning
## y veriable should be factorised
ctg$NSP <- factor(ctg$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg[ctg_sample == 1,]
ctg_test <- ctg[ctg_sample == 2,]

##Building Model
ctg_dt <- ctree(NSP ~ LB+AC+FM, data = ctg_train)
summary(ctg_dt)

##plotting tree
plot(ctg_dt)

##Prune the plot while model building
ctg_dt1 <- ctree(NSP ~ LB+AC+FM, data = ctg_train, controls = ctree_control(mincriterion =0.8,minsplit = 500))

##0.8 does means 80% surity and 500 are number of obs this should be in respect of our data.frame that we are useing if we have 1milion records then may be instead on 500 we will take 5000 records
##if we keep on increasing minsplit number of rules will decrease, if i keep on decreaseing mincriterion rules will keep on decreasing 

plot(ctg_dt1)


##making prediction
pred <- predict(ctg_dt, ctg_test)
pred

pred1 <- predict(ctg_dt1, ctg_test)
pred1



pred_df <- data.frame(pred,ctg_test$NSP)
pred_df
colnames(pred_df) <- c('predicted','actual')
colnames(pred_df)
tab = table(pred_df$predicted,pred_df$actual)
tab

sum(diag(tab))/sum(tab)



pred_df1 <- data.frame(pred1,ctg_test$NSP)
pred_df1
colnames(pred_df1) <- c('predicted','actual')
colnames(pred_df1)
tab1 = table(pred_df1$predicted,pred_df1$actual)
tab1

sum(diag(tab1))/sum(tab1)


309/(309+30+0)

+41/(41+19+0)

+1/(24+4+1)

table(ctg$NSP)  
## result of this will show class imbalance as represention of class 1 is much more than class 2 and 3



#### Random Forest
## classification 
## supervised
##ensemble techinque / bagging technique 
## having n number of trees
## comparison betwn decision tree and random forest
## in decision tree only single tree is there and in random forest n number of trees are there
##decision tree works better when there are more categorical data if there are more data with numeric values then random forest will work better

install.packages("randomForest")
library(randomForest)

##RandomForest

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")
View(ctg)

summary(ctg)
## problem statement
##LB = beats per second
##AC = acceleration per second
##FM = fetal movement per second
##NSP = (Normal, Suspect, pathalogical)

##Taget veriable is NSP

##data cleaning
## y veriable should be factorised
ctg$NSP <- factor(ctg$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg[ctg_sample == 1,]
ctg_test <- ctg[ctg_sample == 2,]

##Building Model
ctg_dtct <- ctree(NSP ~., data = ctg_train)
summary(ctg_dtct)


ctg_dtrf <- randomForest(NSP ~., data = ctg_train)
summary(ctg_dtrf)


ctg_dtrf1 <- randomForest(NSP ~., data = ctg_train, ntree=500)


##making prediction
predct <- predict(ctg_dtct, ctg_test)
predct

pred_dfct <- data.frame(predct,ctg_test$NSP)
pred_dfct
colnames(pred_dfct) <- c('predicted','actual')
colnames(pred_dfct)
tabct = table(pred_dfct$predicted,pred_dfct$actual)
tabct

sum(diag(tabct))/sum(tabct)

##making prediction
predrf <- predict(ctg_dtrf, ctg_test)
predrf

pred_dfrf <- data.frame(predrf,ctg_test$NSP)
pred_dfrf
colnames(pred_dfrf) <- c('predicted','actual')
colnames(pred_dfrf)
tabrf = table(pred_dfrf$predicted,pred_dfrf$actual)
tabrf

sum(diag(tabrf))/sum(tabrf)
##making prediction

predrf1 <- predict(ctg_dtrf1, ctg_test)

pred_dfrf1 <- data.frame(predrf1,ctg_test$NSP)
colnames(pred_dfrf1) <- c('predicted','actual')
tabrf1 = table(pred_dfrf1$predicted,pred_dfrf1$actual)

sum(diag(tabrf1))/sum(tabrf1)


#################################################################################################################
## SVM (Support vector machine)

##Supervised / classification
##require maximum class separation

install.packages("e1071")
library(e1071)

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")
View(ctg)


## problem statement
##LB = beats per second
##AC = acceleration per second
##FM = fetal movement per second
##NSP = (Normal, Suspect, pathalogical)

##Taget veriable is NSP

##data cleaning
## y veriable should be factorised
ctg$NSP <- factor(ctg$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg[ctg_sample == 1,]
ctg_test <- ctg[ctg_sample == 2,]

##Building Model
ctg_dtsvm <- svm(NSP ~., data = ctg_train)
summary(ctg_dtsvm)

##making prediction
predsvm <- predict(ctg_dtsvm, ctg_test)
predsvm

pred_dfsvm <- data.frame(predsvm,ctg_test$NSP)
colnames(pred_dfsvm) <- c('predicted','actual')
tabsvm = table(pred_dfsvm$predicted,pred_dfsvm$actual)
tabsvm

sum(diag(tabsvm))/sum(tabsvm)

#################################################################################################################
##KNN (k nearest neighbour)
##where k is some positive integer
##a(4,7) b(9,15)
##squreroot(square(9-4)+square(15-7))
##distance
##number of neighbour
##value of k should not be very less, start from minimum 5
##it is called lazy coz in this our model is build on train and at the same time it is test the model on test
library(party)
library(dplyr)
library(class)

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")

## problem statement
##LB = beats per second
##AC = acceleration per second
##FM = fetal movement per second
##NSP = (Normal, Suspect, pathalogical)

##Taget veriable is NSP

##data cleaning
## y veriable should be factorised
ctg$NSP <- factor(ctg$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg[ctg_sample == 1,]
ctg_test <- ctg[ctg_sample == 2,]

##Building Model and prection together in KNN
##here we can change the value of k to see the difference
ctg_dtknn <- knn(train=ctg_train,test=ctg_test,cl = ctg_train$NSP,k = 5)
summary(ctg_dtknn)

##confusion matrix
pred_dfknn <- data.frame(ctg_dtknn,ctg_test$NSP)
colnames(pred_dfknn) <- c('predicted','actual')
tabknn = table(pred_dfknn$predicted,pred_dfknn$actual)
tabknn

##calculating accuracy
sum(diag(tabknn))/sum(tabknn)


###create a for loop for checking values of k values
list1 =list()
num1  = seq(5:50)
for (i in 5:50)
{
  ctg_dtknn <- knn(train=ctg_train,test=ctg_test,cl = ctg_train$NSP,k = i)
  tab1 <- table(ctg_dtknn, ctg_test$NSP)
  acc <- sum(diag(tab1))/sum(tab1)
  list1 <- append(list1,acc)
}

plot(num1,list1)

## as per the plot as the value of k increases the accuracy percent decreases


################################################################################################################
##Naive Bayes
##supervised / classification
## works on conditional probability
##p(a/b) <- (p(a) * p(b/a))/p(b)
##where a and b are events
##disadvantage : the conditional probability is always considered only betwn two variables where as other veraibles were left alone, 

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")

## problem statement
##LB = beats per second
##AC = acceleration per second
##FM = fetal movement per second
##NSP = (Normal, Suspect, pathalogical)

##Taget veriable is NSP

##data cleaning
## y veriable should be factorised
ctg$NSP <- factor(ctg$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg[ctg_sample == 1,]
ctg_test <- ctg[ctg_sample == 2,]

##Building Model
ctg_dtnb <- naiveBayes(NSP ~., data = ctg_train)
summary(ctg_dtnb)

##making prediction
prednb <- predict(ctg_dtnb, ctg_test)
prednb

##confusion matrix
pred_dfnb <- data.frame(prednb,ctg_test$NSP)
colnames(pred_dfnb) <- c('predicted','actual')
tabnb = table(pred_dfnb$predicted,pred_dfnb$actual)
tabnb

##calculating accuracy
sum(diag(tabnb))/sum(tabnb)

################################################################################################################
##Date 14JUL2019  ##

##handling class imbalance
##class imbalance (problem)
##solution(Over sampling / under sampling)
##over / under sampling should always been done on train data

library(randomForest)


View(ctg)
table(ctg$NSP)

ctg1<-unique(ctg)
dim(ctg1)
dim(ctg)
table(ctg1$NSP)

ctg <- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")

##filtering dataframe
ctg1 <- filter(ctg, NSP == 1) 
dim(ctg1)
##under sampling
ctg2 <- unique(ctg1)
dim(ctg2)
ctg3 <- filter(ctg, NSP == 2 | NSP == 3)
ctg4 <- rbind(ctg2,ctg3) 

dim(ctg4)
dim(ctg2)
dim(ctg3)

##data cleaning
## y veriable should be factorised
ctg4$NSP <- factor(ctg4$NSP)

##sampling
ctg_sample <- sample(2,nrow(ctg4),replace = TRUE, prob=c(.8,.2))
ctg_train <- ctg4[ctg_sample == 1,]
ctg_test <- ctg4[ctg_sample == 2,]

##Building Model
ctg4_dtnb <- randomForest(NSP ~., data = ctg_train)
summary(ctg4_dtnb)

##making prediction
prednb4 <- predict(ctg4_dtnb, ctg_test)
prednb4

##confusion matrix
pred_dfnb4 <- data.frame(prednb4,ctg_test$NSP)
colnames(pred_dfnb4) <- c('predicted','actual')
tabnb4 = table(pred_dfnb4$predicted,pred_dfnb4$actual)
tabnb4

##calculating accuracy
sum(diag(tabnb4))/sum(tabnb4)

table(ctg4$NSP)


prednb4f <- predict(ctg4_dtnb, ctg4)
prednb4f


pred_dfnb4f <- data.frame(prednb4f,ctg4$NSP)
colnames(pred_dfnb4f) <- c('predicted','actual')
tabnb4f = table(pred_dfnb4f$predicted,pred_dfnb4f$actual)
tabnb4f

##calculating accuracy
sum(diag(tabnb4f))/sum(tabnb4f)

##################################################################################################################
##for Feature selection
##for selecting significant veriables
##for finding important freatures
##Boruta is wrapper on randomForest
##it will use randomforest number of times (i.e it is itreative process)



install.packages("Boruta")
library(Boruta)
install.packages("mlbench")
library(mlbench)


data(Sonar)
View(Sonar)
?Sonar
summary(Sonar)


mod_bor <- Boruta(Class ~., data=Sonar)
mor_bor

plot(mod_bor)

##Green is confirmed important
##yellow is tentative
## red is not important

Bor_FD <- mod_bor$finalDecision
##Bor_sample <- mod_bor[Bor_FD == ,]

##################################################################################################################

Cr_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")
View(Cr_Risk)


summary(Cr_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Cr_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Cr_Risk$LoanAmount[is.na(Cr_Risk$LoanAmount)]<-var1

var3<- mean(Cr_Risk$ApplicantIncome,na.rm = TRUE)
Cr_Risk$ApplicantIncome[is.na(Cr_Risk$ApplicantIncome)]<-var3

var4<- mean(Cr_Risk$CoapplicantIncome,na.rm = TRUE)
Cr_Risk$CoapplicantIncome[is.na(Cr_Risk$CoapplicantIncome)]<-var4

Cr_Risk$Credit_History[is.na(Cr_Risk$Credit_History)]<-0

##
Cr_Risk <- na.omit(Cr_Risk)

View(Cr_Risk)



##Factorising
Cr_Risk<- mutate(Cr_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Cr_Risk<- mutate(Cr_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Cr_Risk<- mutate(Cr_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Cr_Risk<- mutate(Cr_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Cr_Risk<- mutate(Cr_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Cr_Risk<- mutate(Cr_Risk, Married1 = ifelse(Married == "No",1,0))

summary(Cr_Risk)
dim(Cr_Risk)
Cr_Risk <- select(Cr_Risk,2:13)

mod_cr <- Boruta(Loan_Status ~., data=Cr_Risk)


plot(mod_cr)

mod_cr$finalDecision

##################################################################################################################

install.packages("ISLR") ## to use function subset for feature selection in case of linear regression
library(ISLR)
install.packages("leaps") ## dataset Hitters
library(leaps)

##feature selection in case of linear regression

data("Hitters")
View(Hitters)

?Hitters

##Feature Selection with the help of regsubsets function
mod_hit <- regsubsets(Salary ~., Hitters)
summary(mod_hit)

## if i have to build the model using only one features then CRBI is most important, like wise if we want to build model using 2 features then Hits and CRBI is most important, if we want to build model with 3 freatures then Hits CRBI and PutOuts are most important features and so on as per the summary

## if we want to find out more than 8 features then use below code
## this will be done always on full data
##it will use linearregression number of times to compare the Rsqure values (i.e it is itreative process)

dim(Hitters)
mod_hit1 <- regsubsets(Salary ~., Hitters, nvmax = 19)
summary(mod_hit1)


##################################################################################################################

## Class balancing (over / under balanceing using function)

lungcapdata <- read.csv("F:\\R Data Science\\datasets\\LungCapData.csv")
dim(lungcapdata)
summary(lungcapdata)
mod_lung <- regsubsets(LungCap ~., lungcapdata)
summary(mod_lung)


install.packages("ROSE")
library(ROSE)
??ROSE
## it is having function for over sampling and under sampling


Cr_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")
summary(Cr_Risk)

table(Cr_Risk$Loan_Status)
## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Cr_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Cr_Risk$LoanAmount[is.na(Cr_Risk$LoanAmount)]<-var1

var3<- mean(Cr_Risk$ApplicantIncome,na.rm = TRUE)
Cr_Risk$ApplicantIncome[is.na(Cr_Risk$ApplicantIncome)]<-var3

var4<- mean(Cr_Risk$CoapplicantIncome,na.rm = TRUE)
Cr_Risk$CoapplicantIncome[is.na(Cr_Risk$CoapplicantIncome)]<-var4

Cr_Risk$Credit_History[is.na(Cr_Risk$Credit_History)]<-0

##
Cr_Risk <- na.omit(Cr_Risk)

View(Cr_Risk)

##Factorising
Cr_Risk<- mutate(Cr_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Cr_Risk<- mutate(Cr_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Cr_Risk<- mutate(Cr_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Cr_Risk<- mutate(Cr_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Cr_Risk<- mutate(Cr_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Cr_Risk<- mutate(Cr_Risk, Married1 = ifelse(Married == "No",1,0))

summary(Cr_Risk)
dim(Cr_Risk)
Cr_Risk <- select(Cr_Risk,4,7,8,9,10,11,14,15,16,17,18,19)

table(Cr_Risk$Loan_Status1)

CrRisk_sample <- sample(2,nrow(Cr_Risk),replace = TRUE, prob=c(.8,.2))
CrRisk_train <- Cr_Risk[CrRisk_sample == 1,]
CrRisk_test <- Cr_Risk[CrRisk_sample == 2,]

table(CrRisk_train$Loan_Status1)

cr_risk_over_balance <- ovun.sample(Loan_Status1 ~., data = CrRisk_train, method = "over", N=1000)$data
dim(CrRisk_train)
table(cr_risk_over_balance$Loan_Status1)

dim(cr_risk_over_balance)
table(cr_risk_over_balance$Loan_Status1)

###################################################################################################################

Cr_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")
summary(Cr_Risk)

table(Cr_Risk$Loan_Status)
## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Cr_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Cr_Risk$LoanAmount[is.na(Cr_Risk$LoanAmount)]<-var1

var3<- mean(Cr_Risk$ApplicantIncome,na.rm = TRUE)
Cr_Risk$ApplicantIncome[is.na(Cr_Risk$ApplicantIncome)]<-var3

var4<- mean(Cr_Risk$CoapplicantIncome,na.rm = TRUE)
Cr_Risk$CoapplicantIncome[is.na(Cr_Risk$CoapplicantIncome)]<-var4

Cr_Risk$Credit_History[is.na(Cr_Risk$Credit_History)]<-0

##
Cr_Risk <- na.omit(Cr_Risk)

View(Cr_Risk)



##Factorising
Cr_Risk<- mutate(Cr_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Cr_Risk<- mutate(Cr_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Cr_Risk<- mutate(Cr_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Cr_Risk<- mutate(Cr_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Cr_Risk<- mutate(Cr_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Cr_Risk<- mutate(Cr_Risk, Married1 = ifelse(Married == "No",1,0))

summary(Cr_Risk)
dim(Cr_Risk)
Cr_Risk <- select(Cr_Risk,4,7,8,9,10,11,14,15,16,17,18,19)

table(Cr_Risk$Loan_Status1)

CrRisk_sample <- sample(2,nrow(Cr_Risk),replace = TRUE, prob=c(.8,.2))
CrRisk_train <- Cr_Risk[CrRisk_sample == 1,]
CrRisk_test <- Cr_Risk[CrRisk_sample == 2,]


cr_risk_under_balance <- ovun.sample(Loan_Status1 ~., data = CrRisk_train, method = "under", N=300)$data
dim(CrRisk_train)
table(CrRisk_train$Loan_Status1)

dim(cr_risk_under_balance)
table(cr_risk_under_balance$Loan_Status1)



######################################################################################################

install.packages("readxl") ## this package is used to read excel files directly with read_excel function

library(readxl)

## df1 <- read_excel(path)

library(dplyr)

## Pclass : passenger class
## Survived : 0=no , 1 = yes
## Name = Name
## sex = Male Female
## age = age
## sibsp = number of siblings / spouses aboard
## parch = number of parents / children aboard
## Ticket = ticket number
## fare = passenger fare
## cabin = cabin
## embarked = port of embarkation (c=cherbourg, q=queenstown, s = southampton)
## boat = lifeboat
## body = body idetification number
## home.dest = Home / destination

titanic3 <- read.csv("F:/R Data Science/datasets/titanic3.csv",na.strings = "")

View(titanic3)
dim(titanic3)
summary(titanic3)

##data cleaning

var1<- mean(titanic3$age,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
titanic3$age[is.na(titanic3$age)]<-var1

var3<- mean(titanic3$fare,na.rm = TRUE)
titanic3$fare[is.na(titanic3$fare)]<-var3


##var4<- "10"
##titanic3$boat[is.na(titanic3$boat)]<-var4

summary(titanic3)

## filtering required columns
titan3 <- select(titanic3,1,2,4,5,6,7,9,11)

summary(titan3)
##removing na
titan3 <- na.omit(titan3)

##factorising
titan3<- mutate(titan3, sex1 = ifelse(sex == "female",0,1))

titan3$sex1 <- factor(titan3$sex1)

## filtering required columns
titan3 <- select(titan3,1,2,4:9)

summary(titan3)


##Sampling
titan3_sam<- sample(2,nrow(titan3),replace = TRUE,prob = c(.8,.2))
train_titan3 <- titan3[titan3_sam == 1,]
test_titan3 <- titan3[titan3_sam == 2,]
dim(train_titan3)
dim(test_titan3)
summary(train_titan3)

##Building Model
##in logistic regression we have to always specify family=binomial ie having only two values
##survived is target veriable
modtitan3 <- glm(survived ~.,family = binomial,data=train_titan3)


##Prediction
pred_val  <- predict(modtitan3, test_titan3, type="response")
pred_val

##Keeping predicted values in dataframe
pred_actual_df<-data.frame(pred_val,test_titan3$survived)

##converting it in 0 and 1
pred_actual_df<-mutate(pred_actual_df,pred_val=ifelse(pred_val>0.5,1,0))

##rename the columns
colnames(pred_actual_df) <- c('Predicted','Actual')


#confusion matrix 
tab = table(pred_actual_df$Predicted,pred_actual_df$Actual)
tab

##matrix
#   0   1
#0  130 29
#1  24  63

sum(diag(tab))/sum(tab) ## calculation with formula

summary(pred_actual_df)


##survey taget veriable income <=50 = 0 >50 = 1
##abnormal bloodpressure 1 having prob 0 not hav prob
##sex 1 , 0 1 femal 0 male smoking 0 not smoking 1 smoking
## target abnormal bloodpresure
##separate out people having any prob ie pregnancy, illness


###############################################################################################################################
## Date : 20JUL2019

##Unsupervised 
##  k means
##  dbscan
## no train and test
## no predictions
## hidden pattern - with similarities based upon the distance (euclidean distance)

## A(2,4,9,11) B(6, 8, 3, 12)
##sqrt(sqr(6-2)+sqr(8-4)+sqr(3-9)+sqr(12-11))

##kmeans - clustering : is group of similar in one cluster and group of similar in other cluster : similarity measured in distance
## where k is number of clusters (some +ve integer)
## it will assigned randomly centroid number
## kmeans is iterative process


## how to find k of kmeans
age <- c(20,23,25,30,31,40,46,50,51,39,26,27,48)

##randomly assigned centroid as suppose 30 and 39
## so ist cluster is 20,23,25,31,26,27,30
## and iind cluster is 48, 51 , 40,46,50,39
## after this we have to find the mean as below

+20+23+25+31+26+27+30
+182/7

+48+51+40+46+50+39
+274/6

## then these mean we have to use as centroid
## so again now 1st cluster is 20,23,25,30, 31,26,27
## and 2nd cluster is 48,39,40,50,51,46
## again we have to find the mean and go for another clustering on the basis of this mean
## the procedure of finding mean and creating cluster will go on till we get almost same mean values 

## kmeans is non deterministics technique , i.e. even if your input is same the output may differ
## hyper parameter in kmeans is k i.e. not part of our data


+20+23+25+30+31+27+26
+182/7

+48+39+40+50+51+46
+274/6


kid <- c(1:10)

##minimum k will be 1
## max k will be 10

## if there is only one cluster then all the kids are in one cluster
## so the mean of all kids is 5.5 then distance from each and every kid is 
## 4.5,3.5,2.5,1.5,.5,.5,1.5,2.5,3.5,4.5
## then square the distance and sum it
## square of distance : 20.25 , 12.25, 2.25, .25, .25, 2.25, 12.25, 20.25 
## sum squre distance is 70
20.25+12.25+2.25+.25+.25+2.25+12.25+20.25


##more the number of cluster lower is the sum(square distance)

##elbow method
## on x axis no of cluster
## and on y axis is sum square distance

## we have to see the signficant drop will become the optimum number of clusters
## sum(square distance) is nothing but sum square error






+20.25+12.25+6.25+2.75+.25
+41.75*2




###############################################################################################################################

library(dplyr)

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")

ctg_data <- ctg[,-4]

model_ctg_kmeans <- kmeans(ctg_data, 3, nstart = 1, iter.max = 10)

##where 3 is number of clusters i.e. k
## nstart = 1 means how many centroids
## iter.max is number of iteration

model_ctg_kmeans

View(ctg)
dim(ctg)
## 1st cluster is 143.98, 0.0027, 0.0035
## 2nd cluster is 120.83, 0.0030, 0.0039
## 3rd cluster is 131.95, 0.0036, 0.0182

model_ctg_kmeans$centers

model_ctg_kmeans$tot.withinss
##35536.72

model_ctg_kmeans1 <- kmeans(ctg_data, 4, nstart = 1, iter.max = 10)
model_ctg_kmeans1$tot.withinss
##23254.26

model_ctg_kmeans2 <- kmeans(ctg_data, 2, nstart = 1, iter.max = 10)
model_ctg_kmeans2$tot.withinss
##71404.05

distance <- list()
num1  <- seq(1:10)
for (i in 1:10)
{
  mod_ctg_kmeans <- kmeans(ctg_data, i, nstart = 1, iter.max = 10)
  
  distance <- append(distance,mod_ctg_kmeans$tot.withinss)
}

plot(num1,distance,type = "b", xlab="Number of Cluster", ylab = "Total within square distance", col="red")

## after looking in plot significant drop is till 3 or 4
## optimum cluster should be 3

mod_ctg_kmeans <- kmeans(ctg_data, 3, nstart = 1, iter.max = 10)

plot(ctg_data$LB, ctg_data$FM, col=mod_ctg_kmeans$cluster)

##############################################################################################################################
mtcars <- ctg[,-4]
View(mtcars)
model_mtcars_kmeans <- kmeans(mtcars, 3, nstart = 1, iter.max = 10)


distance <- list()
num1  <- seq(1:10)
for (i in 1:10)
{
  mod_mtcars_kmeans <- kmeans(mtcars, i, nstart = 1, iter.max = 10)
  
  distance <- append(distance,mod_mtcars_kmeans$tot.withinss)
}

plot(num1,list1,type = "b", xlab="Number of Cluster", ylab = "Total within square distance", col="red")

summary(mtcars)



mod_mtcars_kmeans <- kmeans(mtcars, 3, nstart = 1, iter.max = 10)

plot(mtcars$mpg, mtcars$hp, col=mod_mtcars_kmeans$cluster)

##############################################################################################################################

##DBSCAN
##desity based spatial clustering application noise

##unsupervised clustering
##no train and test
## no predictions

## obs that are not part of any clusters are called to be noise

##in dbscan there are 2 things that we have to look is 
## number of points and other minimum distance

## density reachability : a point "p" is said to be density reachable form point "q" , if point "p" is within "e" epsilon distance of point "q" and point "q" has sufficient number of points in its neighbourhood which are also within "e" distance

## density connectivity : if point a is neighbour of b , b is neighbour of c, c is neighbour d and d is neighbour of e ... etc then a and e eighbour

##noise : point which are not part of any cluster

## noise is disadvantage of DBSCAN , as you dont know what to do with these points

##noise should not be more than 2%-5%

##increase the number of points then noise will increase and cluster will decrease
##increase in distance will decrease the noise
##decrease the points will increase the cluster and decrease the noise
install.packages("dbscan")

library(dbscan)

ctg<- read.csv("F:\\R Data Science\\datasets\\CTG.csv", na.strings = "")
ctg_data <- ctg[,-4]

##scaling = (x-mue)/SD
##or scaling = (x-xmin)/(xmax-xmin)
## there is no unit for scaled data

ctg_data_scale <- scale(ctg_data)

ctg_dbscan <- dbscan(ctg_data_scale, eps = .3 , minPts = 5)

ctg_dbscan

plot(ctg_data_scale, col = ctg_dbscan$cluster)
## 0 indecates noise
## 

ctg_dbscan1 <- dbscan(ctg_data_scale, eps = .5 , minPts = 5)

ctg_dbscan1

ctg_dbscan1$cluster

ctg_dbscan2 <- dbscan(ctg_data_scale, eps = .3 , minPts = 3)

ctg_dbscan2
ctg_dbscan2$cluster


##############################################################################################################################
View(Hitters)

mtcars_data_scale <- scale(mtcars)

mtcars_dbscan <- dbscan(mtcars_data_scale, eps = 0.9 , minPts = 2)

mtcars_dbscan

##############################################################################################################################

##AUROC plot
##logistic model it is used mostly
##area under roc curve

##increase the tpr beyond limit , fpr will also increase
## AURoc value is betn 0 to 1
## higher the auroc 

library(dplyr)
library(ROSE)

Credit_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")

##1.problem statement
##2. data cleaning
##3. sampling
##4. build the model
##5. test

View(Credit_Risk)
head(Credit_Risk)
dim(Credit_Risk)
summary(Credit_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Credit_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Credit_Risk$LoanAmount[is.na(Credit_Risk$LoanAmount)]<-var1

var3<- mean(Credit_Risk$ApplicantIncome,na.rm = TRUE)
Credit_Risk$ApplicantIncome[is.na(Credit_Risk$ApplicantIncome)]<-var3

var4<- mean(Credit_Risk$CoapplicantIncome,na.rm = TRUE)
Credit_Risk$CoapplicantIncome[is.na(Credit_Risk$CoapplicantIncome)]<-var4

Credit_Risk$Credit_History[is.na(Credit_Risk$Credit_History)]<-0

##
Credit_Risk <- na.omit(Credit_Risk)

##Credit_Risk$Self_Employed[is.na(Credit_Risk$Self_Employed)]<-0

summary(Credit_Risk)
dim(Credit_Risk)

##factoring main dataframe
Credit_Risk<- mutate(Credit_Risk, Loan_Status1 = ifelse(Loan_Status == "Y",1,0))
Credit_Risk<- mutate(Credit_Risk, Education1 = ifelse(Education == "Graduate",1,0))
Credit_Risk<- mutate(Credit_Risk, Self_Employed1 = ifelse(Self_Employed == "Yes",1,0))
Credit_Risk<- mutate(Credit_Risk, newarea1 = ifelse(Property_Area == "Urban",2,ifelse(Property_Area=="Rural",0,1)))
Credit_Risk<- mutate(Credit_Risk, Gender1 = ifelse(Gender == "Female",1,0))
Credit_Risk<- mutate(Credit_Risk, Married1 = ifelse(Married == "No",1,0))

dim(Credit_Risk)
summary(Credit_Risk)
head(Credit_Risk)

##keeping required columns from main dataframe
Credit_Risk <- select(Credit_Risk,4,7,8,9,10,11,14,15,16,17,18,19)
dim(Credit_Risk)
head(Credit_Risk)

##Factor the variables

Credit_Risk$Loan_Status1 = factor(Credit_Risk$Loan_Status1)
Credit_Risk$Education1 = factor(Credit_Risk$Education1)
Credit_Risk$Self_Employed1 = factor(Credit_Risk$Self_Employed1)
Credit_Risk$newarea1 = factor(Credit_Risk$newarea1)
Credit_Risk$Gender1 = factor(Credit_Risk$Gender1)
Credit_Risk$Married1 = factor(Credit_Risk$Married1)

summary(Credit_Risk)

##Sampling
crs<- sample(2,nrow(Credit_Risk),replace = TRUE,prob = c(.8,.2))
train_crs <- Credit_Risk[crs == 1,]
test_crs <- Credit_Risk[crs == 2,]
dim(train_crs)
dim(test_crs)
summary(train_crs)
##Building Model
##in logistic regression we have to always specify family=binomial ie having only two values
##Loan_Status1 is target veriable

model_cr <- glm(Loan_Status1 ~.,family = binomial,data=Credit_Risk)


model_cr1 <- glm(Loan_Status1 ~.,family = binomial,data=train_crs)


##Prediction
pred_val  <- predict(model_cr, Credit_Risk, type="response")
pred_val


pred_val1  <- predict(model_cr1, test_crs, type="response")
pred_val1

##Keeping predicted values in dataframe
pred_actual_df<-data.frame(pred_val,Credit_Risk$Loan_Status1)

pred_actual_df1<-data.frame(pred_val1,test_crs$Loan_Status1)

##converting it in 0 and 1
pred_actual_df<-mutate(pred_actual_df,pred_val=ifelse(pred_val>0.5,1,0))

pred_actual_df1<-mutate(pred_actual_df1,pred_val1=ifelse(pred_val1>0.5,1,0))

##rename the columns
colnames(pred_actual_df) <- c('Predicted','Actual')
colnames(pred_actual_df1) <- c('Predicted','Actual')

##plotting AUROC
roc.curve(pred_actual_df$Actual,pred_val)
roc.curve(pred_actual_df1$Actual,pred_val1)

#confusion matrix 
tab = table(pred_actual_df$Predicted,pred_actual_df$Actual)
tab

tab1 = table(pred_actual_df1$Predicted,pred_actual_df1$Actual)
tab1

##matrix
#   0   1
#0  24  6
#1  26  133

Acc = (24+133)/(24+133+26+6) ##manual calculation of accuracy


sum(diag(tab))/sum(tab) ## calculation with formula
sum(diag(tab1))/sum(tab1) ## calculation with formula


summary(pred_actual_df)

################################################################################################################################
## Date : 21JUL2019

## Hypothesis Testing

## Hypothesis is current situation, current status, current belif
## hypothesis is a statement
## null hypothesis : current belif
## alternate Hypothesis : when current belif is proved worng the outcome is called alternate hypothesis. 
## eighter null hypothesis is true or alternate hypothesis is true both cannot be true at the same time.

##error term : alfa(5%) is also known as type 1 error
## when we rejecting the null there are 5% chance when null was still valid 
## also known as producer error

## beta(5%) : Type 2 error
## accepting the null while the null is worng
## consumer error

##Ho is null hypothesis
##Ha is alternate hypothesis

##Steps involved in Hypothesis
## 1. define your hypothesis (null/alternate) i.e statement
## 2. right tail / left tail / double tail
## 3. testing

## (x-mue)/sd/sqrt(N)


##problem statement 1
#a company making snacks writes that max amount of trans fat per packet is 2 grams.
## test of the sample on 45 packets shows that the average trans fat is 2.1 gram.
## assume that the population standard deviation is .25 and the

##Assume z critical to be 1.645 at 0.05 significance
##assume weight of each packet is 90 grams

##question : should the food regulator impose fine on company?

## ((2.1 - 2)*sqrt(45))/0.25

((2.1-2)*sqrt(45))/0.25

## the output of above is 2.683282

## company should impose fine on company

##problem statement 2
##a company wants to launch a new toothpaste (with salt and mint flavour). it did a random sampling on some 200 customer and found that acceptance rate among them is 33%
##assuming 95% confidence level help the company manager whether to launch the product or not. acceptance rate of the current toothpaste is 30 %.

##assume z value as 1.645

##question : should the product be launched??

##answer is should not launch the product

## FORMULA : (p - P)/sqrt((P*(1-P))/N)

(0.33-0.3)/sqrt((0.3*(1-0.3))/200)

##answer is 0.925


###############################################################################################################################

##hypothesis testing on credit risk

Credit_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")

##1.problem statement
##2. data cleaning
##3. sampling
##4. build the model
##5. test

View(Credit_Risk)
head(Credit_Risk)
dim(Credit_Risk)
summary(Credit_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Credit_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Credit_Risk$LoanAmount[is.na(Credit_Risk$LoanAmount)]<-var1

var3<- mean(Credit_Risk$ApplicantIncome,na.rm = TRUE)
Credit_Risk$ApplicantIncome[is.na(Credit_Risk$ApplicantIncome)]<-var3

var4<- mean(Credit_Risk$CoapplicantIncome,na.rm = TRUE)
Credit_Risk$CoapplicantIncome[is.na(Credit_Risk$CoapplicantIncome)]<-var4

Credit_Risk$Credit_History[is.na(Credit_Risk$Credit_History)]<-0

##
Credit_Risk <- na.omit(Credit_Risk)


##hypothesis testing

##Ha(mean income is less than 5200)
##Ho(mean income is more than 5200)

t.test(Credit_Risk$ApplicantIncome, mu=5200 , conf.level = 0.95, alternative = "less")

## the output of p-value 0.2781
## if the p value is less than 0.05 then reject your null
## so in above case we are going with null i.e. Ho


##Ho(mean income is greater then 5200)
##Ha(mean is less than 5200)

t.test(Credit_Risk$ApplicantIncome, mu=5200 , conf.level = 0.95, alternative = "greater")

## the output of p-value 0.7219
## if the p value is less than 0.05 then reject your null
## so in above case we are going with null i.e. Ho


##Ho(mean income is greater then 4500)
##Ha(mean is less than 4500)

t.test(Credit_Risk$ApplicantIncome, mu=4500 , conf.level = 0.95, alternative = "greater")
## here mu is mean came from problem statement as a standard.
## conf.level is confidance level (can say 5% error margin)
## credit_risk$applicantincome is sample data


## the output of p-value 0.0009867
## if the p value is less than 0.05 then reject your null
## so in above case we are going with alternate i.e. Ha

##Ha(mean income is not equal to 5200 i.e. it can be greater than 5200 or less than 5200)
##Ho(mean income is equal to 3500)
t.test(Credit_Risk$ApplicantIncome, mu=5200 , conf.level = 0.95, alternative = "two.sided")



################################################################################################################################

##Chi - square test (test of independence)
## this is done between two categorical variables
## Null hypothesis is always fix and null hypothesis is there is no relation between them
## chi square test is always a right tail test
##Ho(these 2 variable are not related / there is no relation between them)
##Ha(these 2 veriables are related)

## if there is relation between two veriables then the variables are significant
## if there is no relation between two veriables then the variables are not significant
## if p value is less than 0.05 then reject the null as there is relation between the two veriables 
## if p value is more than 0.05 then accept the null as there is no relation between the two veriables


##if p <0.05 then reject the null
##if p> 0.05 then still holds the null / accept the null

Credit_Risk <- read.csv("F:/R Data Science/datasets/CreditRisk.csv",na.strings = "")

##1.problem statement
##2. data cleaning
##3. sampling
##4. build the model
##5. test

View(Credit_Risk)
head(Credit_Risk)
dim(Credit_Risk)
summary(Credit_Risk)


## how to deal with NULLs

##finding mean after removeing NA

var1<- mean(Credit_Risk$LoanAmount,na.rm = TRUE)
##with is.na(dataframe$column) to check if there are any null values or na
##Replacing na with var1
Credit_Risk$LoanAmount[is.na(Credit_Risk$LoanAmount)]<-var1

var3<- mean(Credit_Risk$ApplicantIncome,na.rm = TRUE)
Credit_Risk$ApplicantIncome[is.na(Credit_Risk$ApplicantIncome)]<-var3

var4<- mean(Credit_Risk$CoapplicantIncome,na.rm = TRUE)
Credit_Risk$CoapplicantIncome[is.na(Credit_Risk$CoapplicantIncome)]<-var4

##
Credit_Risk <- na.omit(Credit_Risk)

tab1 <- table(Credit_Risk$Loan_Status,Credit_Risk$Credit_History)
tab1

chisq.test(tab1)

##if p <0.05 then reject the null


tab2 <- table(Credit_Risk$Loan_Status,Credit_Risk$Gender)
tab2

chisq.test(tab2)

## the value of p is 0.1802
##if p> 0.05 then still holds the null / accept the null


tab3 <- table(Credit_Risk$Loan_Status,Credit_Risk$Property_Area)
tab3

chisq.test(tab3)

##############################################################################################################################
install.packages("MASS")
library(MASS)
data(survey)
View(survey)

Ho 
chisq.test(survey$Smoke,survey$Exer)
## chisqure has only two variables
## Null hypothesis is fixed variables

##############################################################################################################################

salary_satis <- read.csv("F:/R Data Science/datasets/salary_satisfaction.csv",na.strings = "")

View(salary_satis)

##Ho(no relation between salary and satisfaction i.e. service)
##Ha(there is relation between salary and service)

chisq.test(salary_satis$Service,salary_satis$Salary)

## as p value is 0.0009172 i.e. is p value is less than 0.05 then reject the null i.e. Ho
## there is relationship between salary paid and service 


##############################################################################################################################
## Date : 27JUL2019 ##

##ANNOVA

restuarnt <- read.csv("F:/R Data Science/datasets/restuarnt.csv",na.strings = "")

View(restuarnt)

##Ho = Null hypothesis is means/ variance are same
##HA = means and varaiance are not same
## if p value is less than 0.5 then we will reject the null hypothesis
## mean of A = Mean of B = Mean of c = Mean of D
## or Var of A = Var of B = Var of C = Var of D
## where A,B,C,D  are four variables  if mean of any of these is not same then null hypothesis breaks


## example a food chain is testing and want to introduce 3 new items(samosa,vada,paubaji) in the market they want to know that if all the 3 items are equally popular for this they pickup 7 different resturant each item is made available at 7 differe10nt resturants.

rt_stack <- stack(restuarnt) ## with this stack function we are rolling up data

rt_stack 

names(rt_stack) <- c('Salescount','Dishname')

rt_anova <- aov(Salescount ~ Dishname , data = rt_stack)

rt_anova

summary(rt_anova)

## as the p value is more than 0.05 we will accept the null hypothesis and it means all the dishes are equally popular

##############################################################################################################################

library(dplyr)
##PCA ( principal component analysis)

##it is unsupervised (as there is no train and test)
##it is used for dimensionality reduction but not for feature selection
##and PCA only works on numeric data
## and it works on orthogonal transformation.
##i.e transpose of matrix is equal to the inverse of the matrix

##identity matrix <- 1 0 0
##                   0 1 0
##                   0 0 1

##PCA can be solution for multicolinearity

View(mtcars)

mymtcars <- mtcars[,-1]

mydata1 <- scale(mymtcars, scale = T)

mydata1

mypca <- prcomp(mydata1)

summary(mypca)

##in summary proporation of variance = 1st principal component is most importat and so on so the last is least important
## and cumulative proporation is showing culmulative total of proportion of variance
## when data is scaled we can not do train and test
## we have to select principal componant with 5% error i.e. near to 95%
str(mypca)

dim(mypca$x)

cor(mypca$x)
## now there is no multicolinearity
mypca$x

df1 <- as.data.frame(mypca$x) ##
df1 <- cbind(df1,mtcars$mpg)

##renaming the column
colnames(df1)[c(11)] <- c("mpg")

model1 <- lm(mpg ~ PC1+PC2+PC3+PC4+PC5 , data=df1)

summary(model1)

##############################################################################################################################

##ridge regression

## is used as solution for multicolinearity
## some coeficiants increases and some of the coeficiant decreases

install.packages("ridge")
library(ridge)

bodyfat <- read.csv("F:/R Data Science/datasets/bodyfat.csv",na.strings = "")

summary(bodyfat)
View(bodyfat)

cor(bodyfat)

bodymod <- lm(Bodyfat ~., data = bodyfat)

###Call:
lm(formula = Bodyfat ~ ., data = bodyfat)

###Coefficients:
###(Intercept)          Age       Weight       Height         Neck        Chest      Abdomen        Ankle  
###-23.664200     0.083779    -0.083322     0.035932     0.001123    -0.138742     1.032741     0.225943  
###Biceps        Wrist  
###0.148276    -2.203399  



summary(bodymod)
install.packages("car")
library(car)

bodyvif <- vif(bodymod) ## vif is used to check if there is any colinearity but after we build the model
##vif stands for variance inflation factors

## if all the values are less than 5 multicolinearty does not exist, but if the values of some variables are more than 10 then multicolinearity exists


## formula for calculating vif
##vif=1/(1-squre(r))

linridgemod <- linearRidge(Bodyfat ~., data = bodyfat)

summary(linridgemod)

pred1<-predict(linridgemod,bodyfat[,c(2:10)])
pred1

pred_actual_df<-data.frame(pred1,bodyfat$Bodyfat)
pred_actual_df



##############################################################################################################################
## Date : 28JUL2019


## NLP (natural language processores)
##text analytics
##major terms used

##Word boundaries : where one word is starting and other word will start e.g."this is ds class"
##tokenixation : split into phrases, words, idioms
##stemming : mapping to your root word eg cars -> car 
##TF-idf : TF stands for term frequency, here term means word, i.e. how many times the word was occuring in document, higher the frequency more important is the word. idf stands for inverse document frequency, corpus is collection of documents , idf is come into picture when we are having more than one document. formula for idf log(total number of documents / number fo document where the word is present), when frequency is more idf is less, when frequency is less idf is more.
## e.g. words coming in documents for insurance ("premium", "roadacciendent") and suppose the total number of documents are 100
## and then word premium is appearing in all docs and roadaccientent is appearing in 5 docs
## so log(100/100) is 0 and log(100/5) is 2.99

log(100/100) 
log(100/5)

##disambiguation (context vs content) : meanings of the word can be different
##topic model : discovering the hidden topic
##stopwords : are the words which do not add any meaning to our documents (eg. am is are was were this ), how to deal with such words is just remove them.
##name entity recongization : it depends upon the dictionary that we are using i.e. if we say mumbai then it will say place or ciry

##tdm : stands for term document matrix
##it is sparse matrix. i.e. number of zero's are much more in matrix 95-99% may be zero
##



"hello how are you"
"doing good"
"weather is good"
"lets go for tea"

##taking these for sentances will be treated as documents 
## in term documents matrix each unique word become a column, and each document will be row

##  hello how doing good weather lets go tea
## 1 1     1    0    0     0       0   0  0
## 2 0     0    1    1     0       0   0  0
## 3 0     0    0    1     1       0   0  0
## 4 0     0    0    0     0       1   1  1

## 1 indicates the presence of the word and 0 says word is not present
## this is case sensitive.



install.packages("tm")
install.packages("wordcloud")
install.packages("stringr")

library(tm)
library(wordcloud)
library(stringr)

AA <- readLines("F:/R Data Science/datasets/ME Home Market_Prelim_SRF_2016-2017.txt") ## here lots of spaces are there 

AA <- paste(readLines("F:/R Data Science/datasets/ME Home Market_Prelim_SRF_2016-2017.txt"), collapse = " ") ## collapse = " " we are removing the spaces
AA

AA <- tolower(AA) ## to convert all text in to lower case

print(stopwords())


AA2 <- removeWords(AA,stopwords()) ##with this we are removing the stopwords

AA2 <- removeNumbers(AA2) ##to remove numbers
AA2 <- removePunctuation(AA2) ##to remove Punctuation


##mystopwords <- c("*/","/*","*") ## like this we can provide our own stopwords
##AA2 <- removeWords(AA2,mystopwords) ## and remove them from the file

mystopwords <- c("") ## like this we can provide our own stopwords
AA2 <- removeWords(AA2,mystopwords) ## and remove them from the file


bag_of_word1 <- str_split(AA2, " ")
bag_of_word1

str(bag_of_word1) ## check the type of variable
## it is showing as it is in list format

bag_of_word1 <- unlist(bag_of_word1) ##unlisting the file

str(bag_of_word1)
library(wordcloud)
wordcloud(bag_of_word1, min.freq = 25)
## most frequent word

warnings()

##########################################################################################
library(tm)
library(wordcloud)
library(stringr)

AA <- readLines("F:/R Data Science/datasets/MrModi_Speech_IndependenceDay_20171.txt") ## here lots of spaces are there 


AA <- paste(readLines("F:/R Data Science/datasets/MrModi_Speech_IndependenceDay_20171.txt",encoding = "latin1"), collapse = " ")
AA
warnings()

AA <- tolower(AA) ## to convert all text in to lower case

print(stopwords())


AA2 <- removeWords(AA,stopwords())


bag_of_word1 <- str_split(AA2, " ")
bag_of_word1

str(bag_of_word1) ## check the type of variable
## it is showing as it is in list format

bag_of_word1 <- unlist(bag_of_word1)

str(bag_of_word1)
library(wordcloud)
wordcloud(bag_of_word1, min.freq = 15)
## most frequent word

##########################################################################################

##spam is spam mail
##ham is regular mail 
##decide on the basis of second column

sms_spam_df <- read.csv("F:/R Data Science/datasets/spam1.csv")
View(sms_spam_df)

dim(sms_spam_df) ##6776 , 5cols

sms_spam_df=sms_spam_df[,c(1,2)]
dim(sms_spam_df)

colnames(sms_spam_df) <- c("type","text") ##rename the columns
View(sms_spam_df)

##corpus is collection of texts 

sms_corpus <- Corpus(VectorSource(sms_spam_df$text)) ##converting into corpus of documents

sms_corpus ## it will show number of documents created


inspect(sms_corpus[1:3]) ##to view the corpus, normal view command will not work, we have to use inspect command.
## the number supplied in this command is nothing but the document number

inspect(sms_corpus[10:50])

clean_corpus <- tm_map(sms_corpus, tolower) ##convert to lower case part of TM package
clean_corpus <- tm_map(clean_corpus, removeNumbers) ##to remove numbers

inspect(clean_corpus[1:3])

clean_corpus <- tm_map(clean_corpus, removePunctuation) ##to remove Punctuation
clean_corpus <- tm_map(clean_corpus, removeWords, stopwords()) ##to remove words
clean_corpus <- tm_map(clean_corpus, stripWhitespace) ##to remove whitespace

## above 5 lines data is getting cleaned

inspect(clean_corpus[1:3]) ##is just to check

sms_dtm <- DocumentTermMatrix(clean_corpus) ## convert to term document matrix

dim(sms_dtm)
str(sms_dtm)
summary(sms_dtm)

sms_dtm

##creating train and test on original data

sms_raw_train <- sms_spam_df[1:4169,]
sms_raw_test <- sms_spam_df[4170:6776,]

##creating train and test on term document matrix

sms_dtm_train <- sms_dtm[1:4169,]
sms_dtm_test <- sms_dtm[4170:6776,]

##creating train and test on corpus

sms_corpus_train <- clean_corpus[1:4169]
sms_corpus_test <- clean_corpus[4170:6776]


five_times_words <- findFreqTerms(sms_dtm_train,5) ##select word that is appearing atleast five_times_words
five_times_words
length(five_times_words)
sms_train <- DocumentTermMatrix(sms_corpus_train, control = list(dictionary=five_times_words))
dim(sms_train)

sms_test <- DocumentTermMatrix(sms_corpus_test, control = list(dictionary=five_times_words))
dim(sms_test)

View(sms_test)

convert_count <- function(x){
  y <- ifelse(x > 0, 1, 0)
  y <- factor(y, levels = c(0,1), labels = c("No","Yes"))
  y
}

sms_train <- apply(sms_train,2,convert_count) ##apply is used to apply the function on all the lines
sms_test <- apply(sms_test,2,convert_count) ##apply is used to apply the function on all the lines

View(sms_train)

library(e1071)

sms_classifier <- naiveBayes(sms_train, factor(sms_raw_train$type)) ## where sms_train is having x variables and after comma factor(xxx$xxx) is y veriable

##making 
I_pred <- predict(sms_classifier,sms_test)


##Keeping predicted values in dataframe
I_pred_df<-data.frame(I_pred,sms_raw_test$type)


##rename the columns
colnames(I_pred_df) <- c('Predicted','Actual')


#confusion matrix 
tab = table(I_pred_df$Predicted,I_pred_df$Actual)
tab

sum(diag(tab))/sum(tab)

########################################################################################################

library(dplyr)

##createing data.frame by using read.csv
lungcapdata1 <- read.csv("F:\\R Data Science\\datasets\\LungCapData.csv")
View(lungcapdata1)
summary(lungcapdata1)
class(lungcapdata1)

## lungcapacity = lungcap
## lungcapacity is my target


## data cleaning
## as we required all data in numeric we have to convert Smoke Gender and Caesarean in Numeric with mutate

##assigning Numbers to categories
lungcapdata1 <- mutate(lungcapdata1,Smoke1 = ifelse(Smoke == "no",0,1))
lungcapdata1 <- mutate(lungcapdata1,Gender1 = ifelse(Gender == "female",0,1))
lungcapdata1 <- mutate(lungcapdata1,Caesarean1 = ifelse(Caesarean == "no",0,1))

## as we required all data in numeric we have to filter the data so we dont want Smoke Gender and Caesarean as we created new veriables where 

##Filtering the data on the basis of columns
lungcapdata2 <- lungcapdata1[,c(1,2,3,7,8,9)]
head(lungcapdata2)
summary(lungcapdata2)

##Factorising the data
lungcapdata2$Smoke1 <- factor(lungcapdata2$Smoke1)
lungcapdata2$Gender1 <- factor(lungcapdata2$Gender1)
lungcapdata2$Caesarean1 <- factor(lungcapdata2$Caesarean1)
summary(lungcapdata2)


## Random Sampling ###
lcn_sam <- sample(2,nrow(lungcapdata2),replace=TRUE, prob=c(.8,.2))
lcn_train <- lungcapdata2[lcn_sam == 1, ]
lcn_test <- lungcapdata2[lcn_sam == 2, ]
summary(lcn_train)

##Building Model
modlungcap1 <- lm(LungCap ~.,data=lcn_train)
summary(modlungcap1)

plot(modlungcap1)

##residuals is nothing but error

##x-axis fitted or the predicted values
##y-axis residual or the error

##if the red line is almost straight line then its good but if its curved then it means that assumption of homosedacity is not exactly valid.

## also there should not be any pattern among the residual they should be independent and normally distributed
## we also get the rough idea if sum of error is closed to zero


## it is used to check if the residual are normally distrubuted. if the points are on dotted line then its normal
## we expect the 95% of our residual to lie between -1.96 to 1.96 this makes us easier to spot the outlier

##Y axis standardized residual
##x-axis expected residuals if the errors/residucals are distributed normally

## in case of outlier more levarage will be the point extream on x axis
## in case of outlier less levarage is not extream on x - axis, mean of x-axis value may be same


#######################################################################################################
##BOX - COX TRANSFORMATION

library(MASS)

View(cars)

## speed is a speed at which our vehical is running
## dist is a distance after appling the breaks

## y is traget 
## x is speed

cars_model <- lm(cars$dist ~ cars$speed)

plot(cars_model)

## box cox will do random search
## lambda(-2 to +2)
##(-2,-1.9,-1.8,-1.7,.....0,....+2)

## it is used during linear regression when data is not normally distributed or when after building the linear model when we do the plot error terms are not normally distributed or even when the assumption of homosedacity fail.

ab <- boxcox(cars$dist ~ cars$speed)
ab

##MLE(maximum likelihood estimate (log loss))
which(ab$y==max(ab$y))
lambda <- ab$x[which(ab$y==max(ab$y))]

lm_new <- lm(dist^.424 ~ speed , data = cars)
summary(lm_new)
pred <- predict(lm_new, cars)
pred

pred^2.35

1/.424





