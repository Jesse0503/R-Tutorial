nba_heights_19 <- read.csv("C:/Users/asus/Desktop/TA/TA session/week11/nba_players_19.csv")
hist(nba_heights_19$height)
mean(nba_heights_19$height)
var(nba_heights_19$height)
t.test(nba_heights_19$height, mu = 78, conf.level = 0.95)

set.seed(1215)
before <- rnorm(100, 70, 10)
after <- rnorm(100, 68, 10)

exercising <- data.frame("before" = before, "after" = after)

ggplot(data = exercising) + 
  geom_boxplot(mapping = aes(x=1, y=before))

ggplot(data = exercising) + 
  geom_boxplot(mapping = aes(x=1, y=after))


t.test(exercising$before, exercising$after, paired = TRUE)

