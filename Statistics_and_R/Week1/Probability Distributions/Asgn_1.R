 Probability Distributions Exercises #1
1/1 point (graded)

In statistics, the empirical cumulative distribution function (or empirical cdf or empirical distribution function) is the function F(a) for any a, which tells you the proportion of the values which are less than or equal to a.

We can compute F in two ways: the simplest way is to type mean(x <= a). This calculates the number of values in x which are less than or equal a, divided by the total number of values in x, in other words the proportion of values less than or equal to a.

The second way, which is a bit more complex for beginners, is to use the ecdf() function. This is a bit complicated because this is a function that doesn't return a value, but a function.

Let's continue, using the simpler, mean() function.

What is the proportion of countries in 1952 that have a life expectancy less than or equal to 40?

install.packages("gapminder")
library(gapminder)
data(gapminder)
head(gapminder)

x<-gapminder[gapminder$year=="1952",4]

mean(x<=40)
