# Logistic Regression : Predict Purchase


# Import the dataset
df1 = read.csv('./data/logr2.csv')
head(df1)

url="https://docs.google.com/spreadsheets/d/1Md_ro2t3M7nA9JMH1DsE12jfeX7qq-UPw6p8WQd6A2Y/edit#gid=120271978"
library(gsheet)
df2 = as.data.frame(gsheet2tbl(url))
head(df2)

dataset=df2  #or df2 if data is imported from google sheets
head(dataset)
str(dataset)
summary(dataset)
dim(dataset)
View(dataset)
names(dataset)
dataset$gender = factor(dataset$gender)
dataset$purchased=factor(dataset$purchased)
