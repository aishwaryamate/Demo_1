######Variables#####
#Variables are containers for storing the data values.
#Variable are used to allocate a memory location to a specific
#value that we want to store.
#A variable must start with a letter.
#It can contain underscore,letters and numbers.
#It cannot contain - and all other special characters,
#like #,@,!,$,%,^,&,*,etc.
#In R we can use both (= and <-) as a assignment operator, but
#mostly <- operator is preffered over =.

1ten = 10
ten1 <- 5
coursename <- 'DA'
course name <- 'DA'
course_name = 'DS'
a! = 53

rm(ten1)
rm(coursename)

#Data types in R:
#1.Integer
#2.Float
#3.String/character
#4.Logical/Boolean

ten = 10
class(ten)

f = 10.2
class(f)

#L letter will define integer value.
a <- 50L
class(a)

city <- 'PUNE'
class(city)

pin_code = '54614'
class(pin_code)


boolean <- TRUE
class(boolean)
x <- F
class(x)
a <- 'TRUE'
class(a)



age <- 20,21,25,26,23


#Data structures in R
#Vector and Data Frame, Lists

#Homogeneous Data Structure(Vector)

age <- c(20,21,22,25,26)

info <- c('Sakshi',25,145.32,TRUE)
info

info1 <- c(25,145.32,TRUE)
info1


#Accessing elements from a vector
info <- c('Sakshi',25,145.32,TRUE)
info
info[2]
info[4]
info[1:3]
info[1,2,3]
info[2:3]
info[1,4]
info[c(1,4)]
info[c(1,3)]
info[c(1,3,4)]

match(25,info) #Used to find out the index number of any value.
match(TRUE,info)
info <- c('Sakshi',25,145.32,TRUE)
#Assigning or replacing values in a vector

info[2] <- 35
info

info[c(1,4)]
info[c(1,4)] <- c('Tarun',"FALSE")
info

#List Creation
lst_ds = list('Sakshi',20,165.52,T)
lst

#Accessing and replacing elements from list

lst[2:4]
lst[3]
lst[c(1,4)]
lst[3] <- 'Pune'
lst


#Data Frame Creation

ID <- c(100,101,102,103,104)
Name <- c('A','B','C','D','E')
Age <- c(20,23,25,30,35)
Dept <- c('HR','Accounts','DA','DS','Marketing')
City <- c('Pune','Mumbai','HYD','Delhi','Chennai')

df <- data.frame(ID,Name,Age,Dept,City)
df
View(df)


#Accessing elements from a data frame

df[1,5]
df[3,4]
df[5,4]
df[1:2,4:5]
df[4:5,2:3]
df[1,c(1,4)]
df[c(2,5),5]
df[c(2,5),c(1,5)]

#Replacing values from a data frame.
df[3,4]
df[3,4] <- 'Data Analyst'
df[4,4] <- 'Data Scientist'


df[2,c(1,5)] <- c(201,'Bengaluru')
