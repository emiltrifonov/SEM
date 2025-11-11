#44
# P(точка попада в кръга) = Sкръг / Sквадрат = Pi*R*R / 4R*R = Pi / 4
# ~ брой точки в кръга / брой точки в квадрата
# => Pi ~ 4 * (брой точки в кръга / брой точки в квадрата)

n <- 10000
x <- runif(n, -1, 1)
y <- runif(n, -1, 1)

4*sum(x^2 + y^2 < 1) / n

plot(x, y, pch=".", col="black")
curve(sqrt(1-x^2), from=-1, to=1, add=T, col="red")
curve(-sqrt(1-x^2), from=-1, to=1, add=T, col="red")


#45
f <- function(x) {
  exp(-x^2/2)*(1/sqrt(2*pi))
}

curve(f(x), from=0.8, to=4)
n <- 10^4
a <- 0.8
b <- 4
x <- runif(n, a, b)
y <- runif(n, 0, f(a))
(sum(y < f(x))/n)*(b-a)*f(a)

# Интегралът е равен на вероятността P(0.8 < X < 4), X ~ N(0,1).
# Вероятността, пресметната с функцията pnorm:
pnorm(4) - pnorm(0.8)


plot(x, y, pch=".", col="black")
curve(f(x), from=0.8, to=4, add=T, col="red")


#49
library(MASS)
data(survey)
?survey # info

table(survey$Exer)

attach(survey)
table(Exer)

sort( table(Exer), decreasing=T )

100 * table(Exer) / length(Exer)

barplot(table(Exer))
barplot(sort( table(Exer), decreasing=T ))
barplot(100 * table(Exer) / length(Exer))
barplot(sort( 100 * table(Exer) / length(Exer), decreasing=T ))

pie(table(Exer))
pie(table(Exer), col=c("green","yellow","red"))


#50
table(Pulse)
hist(Pulse)

pulse.interval <- cut(Pulse, breaks=seq(30, 110, 5))
pulse.interval

table(pulse.interval)
barplot(table(pulse.interval))

stripchart(Pulse, method="stack", pch=20)
stripchart(Pulse, method="stack", pch=18)
stripchart(Pulse, method="stack", pch=1)
stripchart(Pulse, method="stack", pch="*")


#51
table(Age)

age.interval <- cut(Age, breaks=seq(15,75,10))
table(age.interval)

barplot(table(age.interval))
hist(Age)

stripchart(Age, method="stack", pch="*")


#53
getwd()
load("cereals.RData")
attach(cereals)

hist(carbo)

boxplot(carbo, horizontal=T)
# min -> Q1 [ -> Me | -> Q3 ] -> max

mean(carbo)
mean(carbo, na.rm=T)
median(carbo, na.rm=T)
sd(carbo, na.rm=T)

hist(sodium)
boxplot(sodium, horizontal=T)
mean(sodium, na.rm=T)
median(sodium, na.rm=T)
sd(sodium, na.rm=T)

hist(potass)
boxplot(potass, horizontal=T)
mean(potass, na.rm=T)
median(potass, na.rm=T)
sd(potass, na.rm=T)

# krugchetata vdqsno sa izvun [ Q1 - 1.5 * (Q3 - Q1), Q3 + 1.5 * (Q3 - Q1) ] 


#54
data(survey)
attach(survey)

boxplot( Pulse ~ W.Hnd, horizontal=T )

mean(Pulse[W.Hnd=="Left"], na.rm=T)
mean(Pulse[W.Hnd=="Right"], na.rm=T)

median(Pulse[W.Hnd=="Left"], na.rm=T)
median(Pulse[W.Hnd=="Right"], na.rm=T)


#55
my.summary <- function(x) {
  res <- c( median(x, na.rm=T), mean(x, na.rm=T), sd(x, na.rm=T) )
  names(res) <- c("Median", "Mean", "StDev")
  res
}

# a)
my.summary(Pulse)

# b)
my.summary(Pulse[Sex=="Female"])

# v)
my.summary(Pulse[Age <= 25])

# g)
my.summary(Pulse[Exer=="Freq"])

# d)
my.summary(Pulse[Smoke=="Never" & Exer=="Freq"])
