#Read the csv file
df <- datasets::airquality

####Top 10 rows and last 10 rows

head(df)
head(df,10)
first_few <- head(df, 7)
first_few
tail(df)
tail(df,25)

#Extract records from 5 to 25 and from 1 to 5 columns

df[5:25,1:5]
df[c(1,5),1:6]
df[c(18,10),c(5,1)]
df[c(6,9),c(2,6)]
df[c(6,9),c('Solar.R','Day','Ozone')]



###########Summary of the data#########
summary(df)
df$Ozone
df$Month
summary(df$Temp)
Temp
attach(df)
Temp
Ozone
#detach(df)
Temp
df_ozone <- Ozone

###########DATA VISUALIZATION IN R##########
#Scatter plot

plot(Ozone,Temp,xlab = 'Ozone Level',ylab = 'Temperature Value',
     main = 'Scatter Plot', col = 'red',pch = 19)
plot(df)

#Line Plot#
plot(Ozone,type = 'l', col = 'blue')


#Horizontal bar plot
barplot(Month)

unique(Month)
table(Month)#Table function returns frequency of all unique values
freq <- table(Month)
barplot(freq)
barplot(table(Month))


#Histogram
hist(Ozone, col= '#29caf2')
summary(Temp)
hist(Temp)
hist(W)

##Single box plot and stats
boxplot(Ozone)
boxplot(Temp)
boxplot(Ozone)$stats
boxplot(Ozone)$out

# Multiple box plots
boxplot(df,col = c('red','yellow','green','blue','cyan','darkred'))


#Multiple graphs in one canvas
par(mfrow = c(2,2), mar = c(2,2,2,2))
plot(Ozone,Temp,pch=19, col = 'blue')
boxplot(Ozone,col = 'green')
hist(Ozone,col = 'red')
boxplot(df)


#sd
sd(Ozone,na.rm = T)
mean(Ozone,na.rm = T)
sd(Temp)

#var
var(Ozone,na.rm = T)

#skewness
skewness(Temp)


install.packages('moments')

library(moments)
skewness(Temp)
skewness(Ozone,na.rm = T)
