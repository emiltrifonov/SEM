# 60
n <- 3
l <- 1/5
xsum <- replicate( 1000, sum( rexp(n, l) ) )
hist( xsum )

Nrep <- 1000

for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xsum <- replicate( 1000, sum( rexp(n, l) ) )
  hist(xsum, main=paste("n =", n))
}

for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xsum <- replicate( 1000, sum( rexp(n, l) ) )
  plot.ecdf( xsum, do.points=FALSE, col="blue", lwd=2, main=paste("n = ",n))
  curve( pnorm(x, 5*n, 5*sqrt(n)), add=T, col="red", lty="longdash", lwd=2)
}


# 61
for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xmean <- replicate( 1000, mean( rexp(n, l) ) )
  hist(xmean, main=paste("n =", n))
}

for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xmean <- replicate( 1000, mean( rexp(n, l) ) )
  plot.ecdf( xmean, do.points=FALSE, col="blue", lwd=2, main=paste("n = ",n))
  curve( pnorm(x, 5, 5/sqrt(n)), add=T, col="red", lty="longdash", lwd=2)
}


#62
for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xsum <- replicate( 1000, sum( rpois(n, 3) ) )
  hist(xsum, main=paste("n =", n))
}

for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xsum <- replicate( 1000, sum( rpois(n, 3) ) )
  plot.ecdf( xsum, do.points=FALSE, col="blue", lwd=2, main=paste("n = ",n))
  curve( pnorm(x, 3*n, sqrt(3*n)), add=T, col="red", lty="longdash", lwd=2)
}


#63
for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xmean <- replicate( 1000, mean( rpois(n, 3) ) )
  hist(xmean, main=paste("n =", n))
}

for ( n in c(3, 7, 10, 30, 90, 200) ) {
  xmean <- replicate( 1000, mean( rpois(n, 3) ) )
  plot.ecdf( xmean, do.points=FALSE, col="blue", lwd=2, main=paste("n = ",n))
  curve( pnorm(x, 3, sqrt(3/n)), add=T, col="red", lty="longdash", lwd=2)
}


#65
a <- (980-900)/(900/sqrt(100))

# ЦГТ ? (централна гранична теорема?)
1 - pnorm(a)

# sus simulacii
mean.vals <- replicate(100000, mean(rexp(100, 1/900)))
sum(mean.vals > 980) / 100000


#66
a <- (25-30)/(60/(sqrt(12)*sqrt(50)))
b <- (35-30)/(60/(sqrt(12)*sqrt(50)))

pnorm(b) - pnorm(a)

# sus simulacii
mean.vals <- replicate(100000, mean(runif(50, 0, 60)))
sum(mean.vals > 25 & mean.vals < 35) / 100000


#67
x <- c(4:7)
p <- c(0.2, 0.4, 0.3, 0.1)
miu <- sum(x*p)
sigma <- sqrt ( sum((x^2) * p) - miu^2 )

# CGT
a <- (5.5 - miu)/(sigma/sqrt(49))
1 - pnorm(a)

# sus simulacii
sample(x, 49, replace=T, prob=p)

mean.vals <- replicate(100000, mean(sample(x, 49, replace=T, prob=p)))
sum( mean.vals > 5.5) / 100000


#68
a <- (4000 - 160*24)/(7*sqrt(160))
1 - pnorm(a)
