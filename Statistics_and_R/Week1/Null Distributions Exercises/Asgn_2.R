 Null Distributions Exercises #2
1/1 point (graded)

We are now going to increase the number of times we redo the sample from 1,000 to 10,000. Set the seed at 1, then using a for-loop take a random sample of 5 mice 10,000 times. Save these averages. What proportion of these 10,000 averages are more than 1 gram away from the average of x ?

library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )


set.seed(1)
n=10000
nulls <- vector("numeric",n)

for(i in 1:n){
  nulls[i] <- abs(mean(sample(x, 5)) - mean(x)) > 1
}

sum(nulls)/n






 






