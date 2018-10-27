
library(rpart)
library(rpart.plot)

gender=sample(c('M','F'),size = 10000,prob = c(.6,.4),replace=T)
age=ceiling(rnorm(10000,35,5))
buy=sample(c('yes','No'),size = 10000,prob = c(.5,.5),replace = T)
df=data.frame(buy,age,gender)
head(df)

dtree1=rpart(buy~gender+age,data=df,minsplit=10,cp=-1) 
dtree1
dtree1$variable.importance
rpart.plot(dtree1,cex=.8,nn=T)
