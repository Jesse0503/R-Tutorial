
library(tidyverse)
vote <- read.csv("C:/Users/asus/Desktop/TA/TA session/week14/vote_nsa.csv")
party.vote <- table(vote$phone_spy_vote, vote$party)
ggplot(data=vote)+
  geom_bar(mapping = aes(x=phone_spy_vote, fill = party), position = "dodge")


chisq.test(party.vote)


#https://www.openintro.org/stat/data.php?data=vote_nsa
#We want to know if the answers significantly vary with a respondent¡¦s party affiliation.
#Make a two-way table with answers in rows and party affiliations in columns.
# Make barplots for voting distribution, and separated it by party affliation.
#Make histograms for phone_spy_vote by party



yrbss <- read.csv("C:/Users/asus/Desktop/TA/TA session/week14/yrbss.csv") 
yrbss <- yrbss[complete.cases(yrbss),]
ggplot(data = yrbss) + 
  geom_boxplot(mapping = aes(group=gender, x=gender, y =physically_active_7d))
ggplot(data=yrbss)+
  geom_bar(mapping = aes(x=physically_active_7d, fill = gender), position = "dodge")
t.test(physically_active_7d~gender, data = yrbss)

#https://www.openintro.org/stat/data.php?data=yrbss
# Make side-by-side box plots for physically_active_7d by gneder
# Make histograms for child_care by gender
# Is there a difference in the average physically_active_7d between males and females?

yrbss$race <- factor(yrbss$race)
ggplot(data = yrbss) + 
  geom_boxplot(mapping = aes(group=race, x=race, y =physically_active_7d))

aov_result <- aov(physically_active_7d~race, data = yrbss)
summary(aov_result)


# Make side-by-side box plots for physically_active_7d by different race.
# Do average physically_active_7d vary with race?

