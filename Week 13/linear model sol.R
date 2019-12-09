library(tidyverse)
murders <- read.csv("C:/Users/asus/Desktop/TA/TA session/week13/murders.csv")
murders$perc_emp <- 100 - murders$perc_unemp

# 1.
ggplot(data = murders) + 
  geom_smooth(mapping = aes(x=perc_emp, y=perc_pov))
ggplot(data = murders) + 
  geom_point(mapping = aes(x=perc_emp, y=annual_murders_per_mil))

# 2.
cor(murders$perc_emp, murders$annual_murders_per_mil)

# 3.
fit <- lm(murders$annual_murders_per_mil~murders$perc_emp)
fit

# 4.
fit$coefficients[[2]] * 70 + fit$coefficients[[1]]

# 5.
residuals(fit)
ggplot() + 
  geom_point(mapping = aes(x = murders$perc_emp, y =fit$residuals))

# 6.
ggplot() + 
  geom_point(mapping = aes(x=murders$perc_emp, y=murders$annual_murders_per_mil)) +
  geom_smooth(mapping = aes(x = murders$perc_emp, y =fit$fitted.values))
