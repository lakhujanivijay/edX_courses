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





 






