For these exercises, we will be using the following dataset:

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )

Here x represents the weights for the entire population.

Using the same process as before (in Null Distribution Exercises), set the seed at 1, then using a for-loop take a random sample of 5 mice 1,000 times. Save these averages. After that, set the seed at 1, then using a for-loop take a random sample of 50 mice 1,000 times. Save these averages.

We recommend you review the video and read the section on normal distribution in the book before tackling these problems:
http://genomicsclass.github.io/book/pages/random_variables.html#normal_distribution
Normal Distribution Exercises #1
1/1 point (graded)

Use a histogram to "look" at the distribution of averages we get with a sample size of 5 and a sample size of 50. How would you say they differ?

par(mfrow=c(2,1))
hist(a)
hist(b)

They both look roughly normal, but with a sample size of 50 the spread is smaller. correct 
