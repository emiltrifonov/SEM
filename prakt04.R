#32 
xs <- runif(5000, 3, 5)
hist(xs, probability = TRUE)
curve( dunif(x, 3, 5), add=T, lwd=2)


#33
xs <- rexp(500, 1/7)
hist(xs, probability = TRUE)
curve( dexp(x, 1/7), from=0, to=max(xs), add=T, lwd=2)


#34
xs <- rnorm(5000, 0, 1)
hist(xs, probability = TRUE)
curve( dnorm(x, 0, 1), add=T, lwd=2)


#35
n <- 200
#n <- 1000

xs <- runif(n, 7, 9)
plot.ecdf(xs, do.points=F)
curve (punif(x, 7, 9), add=T, col="red")


#36
n <- 200
#n <- 1000

xs <- rexp(n, 3)
plot.ecdf(xs, do.points=F)
curve (pexp(x, 3), add=T, col="red")
  

#37
n <- 200
#n <- 1000

xs <- rnorm(n, 4, 1.2)
plot.ecdf(xs, do.points=F)
curve (pnorm(x, 4, 1.2), add=T, col="red")


#38
par(mfrow=c(1,3))
curve(dunif(x, 7, 9), from=7, to=9)
curve(punif(x, 7, 9), from=5, to=11)
curve(qunif(x, 7, 9), from=0, to=1)


#39
curve(dexp(x, 3), from=0, to=4)
curve(pexp(x, 3), from=0, to=4)
curve(qexp(x, 3), from=0, to=1)


#40
curve(dnorm(x, 4, 1.2), from=0, to=8)
curve(pnorm(x, 4, 1.2), from=0, to=8)
curve(qnorm(x, 4, 1.2), from=0, to=1)


#41
# a)
1 - punif(500, 495, 502)

# b)
qunif(0.2, 495, 502)


#42
# a)
1 - pexp(3, 1/4)

# b)
pexp(2, 1/4)

# v)
(1 - pexp(6, 1/4)) / (1 - pexp(3, 1/4))

# g)
qexp(0.9, 1/4)
