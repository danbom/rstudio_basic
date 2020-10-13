install.packages("psych")
library(psych)

gender <- bfi$gender
education <- bfi$education
age <- bfi$age
E3 <- bfi$E3

# Problem 1. What is the type of each of these vectors? 

typeof(gender)

# Problem2. What proportion of the sample is females?

table(gender)

# Problem 3. What is the sample mean difference in `E3` between males (gender = 1) younger than (<) 26 and females (gender = 2) younger than (<) 26? That is, mean of `E3` for males younger than 26 - mean of `E3` for females younger than 26.

table(E3)
mean(E3[gender == 1 & age<26], na.rm = TRUE) - mean(E3[gender == 2 & age<26], na.rm = TRUE)

# Problem 4. In the `bfi` dataset, how many males with age 16 and highschool degree are there? 

table(education)
sum(gender == 1 & age == 16 & education == 1, na.rm=TRUE)

# Problem 5. Using the `bfi` data set, what is the count of 42 year old females?

sum(gender == 2 & age == 42)
