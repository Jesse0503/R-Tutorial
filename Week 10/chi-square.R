smoking <- read.csv("C:/Users/asus/Desktop/TA/TA session/week10/smoking.csv")
library(tidyverse)

gender.smoke <- table(smoking$smoke, smoking$gender)
gender.smoke.pro <- prop.table(gender.smoke, margin = 2)
print(gender.smoke.pro)

marital.smoke <- table(smoking$smoke, smoking$marital_status)
marital.smoke.pro <- prop.table(marital.smoke, margin = 2)
print(marital.smoke.pro)

nationality.smoke <- table(smoking$smoke, smoking$nationality)
nationality.smoke.pro <- prop.table(nationality.smoke, margin = 2)
print(nationality.smoke.pro)

ggplot(data = smoking) + 
  geom_bar(mapping = aes(x=smoke, fill=marital_status), position = "dodge")

ggplot(data = smoking) + 
  geom_bar(mapping = aes(x=smoke, fill=nationality), position = "dodge")

ggplot(data = smoking) + 
  geom_bar(mapping = aes(x=smoke, fill=gender), position = "dodge")

chisq.test(gender.smoke)

chisq.test(marital.smoke)

chisq.test(nationality.smoke)

