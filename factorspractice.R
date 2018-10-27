
#factors
(gender=sample(c('M','F'),size = 20,replace=T))
summary(gender)

genderF=factor(gender)
summary(genderF)
genderF

likscale=sample(c('Ex','Good','Sat','Poor'),size=20,replace=T)
summary(likscale)
class(likscale)
likscaleF=factor(likscale)
summary(likscaleF)
class(likscaleF)
likscaleOF=factor(likscale,ordered = T,levels=c('poor','sat','Good','Ex'))
summary(likscaleOF)
likscaleOF
barplot(table(likscaleF),col = 1:4)
barplot(table(likscaleOF),col = 1:4)

# Split the dataset into the Training set and Test set
#install.packages('caTools')
library(caTools)
set.seed(2000)
split = sample.split(dataset$purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

dim(dataset); dim(training_set); dim(test_set)
names(dataset)


# Logisitic Model on Training Set
logitmodel1 = glm(purchased ~ gender + age + salary, family = binomial,  data = training_set)
summary(logitmodel1)

# gender not insignificant dropped here
logitmodel2 = glm(purchased ~ age + salary, family = binomial, data = training_set)
summary(logitmodel2)

#summary(logitmodel2)$coefficient  # they are in log terms
head(training_set)
#predict on sample data
test_set2 = data.frame(age=c(40,65), gender=c('Male', 'Female'), salary=c(40000, 50000))
test_set2
(prob_pred2 = predict(logitmodel1, type = 'response', newdata = test_set2))
cbind(test_set2, prob_pred2)
#age=65 person likely to purchase

# Predicting the Test set results from testset
head(test_set)
(prob_pred = predict(logitmodel2, type = 'response', newdata = test_set))
length(prob_pred)
summary(prob_pred)
head(cbind(test_set,prob_pred ),10)

#if prob > 0.5 make it 1, else 0
y_pred = ifelse(prob_pred > 0.5, 1, 0)
head(cbind(test_set$purchased, y_pred),100)

# Making the Confusion Matrix
cm = table(test_set[,5], y_pred)
cm
(accuracy = (59 + 24)/ sum(cm))

library(caret)
caret::confusionMatrix(cm)

names(dataset)

