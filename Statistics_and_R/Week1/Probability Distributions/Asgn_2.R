 Probability Distributions Exercises #2
1/1 point (graded)
What is the proportion of countries in 1952 that have a life expectancy between 40 and 60 years? Hint: this is the proportion that have a life expectancy less than or equal to 60 years, minus the proportion that have a life expectancy less than or equal to 40 years.

install.packages("gapminder")
library(gapminder)
data(gapminder)
head(gapminder)

x<-gapminder[gapminder$year=="1952",4]

mean(x<=60) - mean(x<=40)
 
