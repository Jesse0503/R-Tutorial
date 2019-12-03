library(tidyverse)
babies <- read.csv("C:/Users/asus/Desktop/TA/TA session/week12/babies.csv")
babies <- babies[complete.cases(babies),]


hist(babies[babies$parity==1,]$gestation)
hist(babies[babies$parity==0,]$gestation)
ggplot(data = babies) + 
  geom_boxplot(mapping = aes(group=parity, x=parity, y=gestation))


hist(babies[babies$smoke==1,]$gestation)
hist(babies[babies$smoke==0,]$gestation)
ggplot(data = babies) + 
  geom_boxplot(mapping = aes(group=smoke, x=smoke, y=gestation))


t.test(gestation~parity, data = babies)
t.test(gestation~smoke, data = babies)