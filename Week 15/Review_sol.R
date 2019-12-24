library(tidyverse)
tip <- read.csv("C:/Users/asus/Desktop/TA/TA session/week15/tips.csv")

# 1.
ggplot(data = tip) + 
  geom_point(mapping = aes(x=n_peop, y=tip))
ggplot(data = tip) + 
  geom_smooth(mapping = aes(x=n_peop, y=tip))

# 2.

cor(tip$n_peop, tip$tip)

# 3.
fit <- lm(tip$tip~tip$n_peop)
fit

# 4.
summary(fit)

# 5.
residuals(fit)
ggplot() + 
  geom_point(mapping = aes(x = tip$n_peop, y =fit$residuals))

# 6.
ggplot() + 
  geom_point(mapping = aes(x=tip$n_peop, y=tip$tip)) +
  geom_smooth(mapping = aes(x = tip$n_peop, y =fit$fitted.values))

# 7.

fit$coefficients[[2]] * 12 + fit$coefficients[[1]]

