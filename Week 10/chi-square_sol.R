absenteesim <- read.csv("C:/Users/asus/Desktop/TA/TA session/week10/absenteeism.csv")
library(tidyverse)

ggplot(data = absenteesim) + 
  geom_bar(mapping = aes(x=sex, fill=lrn), position = "dodge")

sex.lrn <- table(absenteesim$sex, absenteesim$lrn)
sex.lrn.pro <- prop.table(sex.lrn, margin = 2)
chisq.test(sex.lrn)
