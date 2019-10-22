#Method One
grades = matrix(c(70,59,61,66,88,98,84,88,79), nrow = 3,ncol = 3)
colnames(grades) = c("John", "Mary", "Jean")
rownames(grades) = c("One", "Two", "Three")
grades

#Method Two
John <- c(70,59,61)
Mary <- c(66,88,98)
Jean <- c(84,88,79)
grades_two <- cbind(John, Mary, Jean)
rownames(grades_two) = c("One", "Two", "Three")
grades_two