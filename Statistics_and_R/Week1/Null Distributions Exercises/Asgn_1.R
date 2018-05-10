#####For these exercises, we will be using the following dataset:

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )

Here x represents the weights for the entire population.
Null Distributions Exercises #1
1/1 point (graded)

Set the seed at 1, then using a for-loop take a random sample of 5 mice 1,000 times. Save these averages. What proportion of these 1,000 averages are more than 1 gram away from the average of x ? 

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )


set.seed(1)
n=1000
nulls <- vector("numeric",n)

for(i in 1:n){
  nulls[i] <- abs(mean(sample(x, 5)) - mean(x)) > 1
}

sum(nulls)/n





 






