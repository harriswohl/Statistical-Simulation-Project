lambda <- .2

#theoretical mean 
thmean <- 1/lambda

#sample mean 
set.seed(8675309)
samean <- mean(rexp(40, .2))
samean
hist(rexp(40, .2), bins =20, main = "Histogram of Exponential Sample (n = 40)")
abline(v = samean, col = "red")
abline(v = thmean, col = "blue")
legend(5.1,13, legend = c("Sample Mean", "Theoretical Mean"), 
       col = c("red", "blue"), lwd = 1, bty = "n")

#theoretical variance 

thvariance <- (1/lambda)^2

#sample variance
set.seed(8675309)
savariance <- (sd(rexp(40, .2)))^2
savariance


#show that the distribution is approx normal 

set.seed(8675309)
means <- NULL
for(x in 1:1000){
        means <- c(means, mean(rexp(40, .2)))
}

hist(means)

mean(means)
sd(means)
