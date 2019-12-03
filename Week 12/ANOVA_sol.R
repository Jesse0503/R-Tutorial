library(tidyverse)


## Question 1
babies <- read.csv("C:/Users/asus/Desktop/TA/TA session/week12/babies.csv")
babies <- babies[complete.cases(babies),]
babies$age <- factor(babies$age)

## Boxplot
ggplot(data=babies) +
  geom_boxplot(mapping = aes(x=age, y=gestation))

##Barplot
ggplot(data = babies) +
  geom_histogram(mapping = aes(x=gestation, fill=age), bins = 40)

aov_result <- aov(gestation~age, data = babies)
summary(aov_result)




## Question 2


mlb <- read.csv("C:/Users/asus/Desktop/TA/TA session/week12/mlb_players_18.csv")
mlb <- mlb[complete.cases(mlb),]
mlb <- mlb[mlb$AB>10,]
mlb$position <- factor(mlb$position)

ggplot(data=mlb) +
  geom_boxplot(mapping = aes(x=position, y=AVG ))

ggplot(data=mlb) +
  geom_histogram(mapping = aes(x=AVG, fill=position), binwidth = 0.03)

mlb_aov <- aov(AVG~position, data = mlb)
summary(mlb_aov)
