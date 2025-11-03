6*7

x <- c(2,5,11,82,51,14)
x
x[2]

i <- c(1,2,5)
x[i]

1:20
20:1

seq(1,20,2.5)

rep(1,5)
rep(c(1,2,3), 3)
rep(41, 67);

rm(i)

sample(c(1:7), 4, replace=F)

sample(c(1:10), 4, replace=T)


#zad 1
simulate.zad1 <- function() {
x <- sample(c(1:8), 2, replace=T)
x[1]==x[2]
}
simulate.zad1()

res <- replicate(100000, simulate.zad1())
sum(res)/length(res)


#zad2
simulate.zad2 <- function() {
socks <- c(1,1,2,2,3,3)
x <- sample(socks, 2, replace=F)
x[1]==x[2]
}
simulate.zad2()

res <- replicate(10000, simulate.zad2())
sum(res) / length(res)


#zad3
simulate.zad3 <- function() {
keys <- c(1:4)
x <- sample(keys, 4, replace=F)
x[4] == keys[4]
}
simulate.zad3()

res <- replicate(10000, simulate.zad3())
sum(res) / length(res)


#zad4
simulate.zad4 <- function() {
questions <- c(rep(0,3),rep(1,17))
x <- sample(questions, 2, replace=F)
sum(x) == 1
}
simulate.zad4()

res <- replicate(10000, simulate.zad4())
sum(res) / length(res)


#zad5
simulate.zad5 <- function() {
bdays <- c(1:365)
x <- sample(bdays, 25, replace=T)
any(duplicated(x))
}
simulate.zad5()

res <- replicate(10000, simulate.zad5())
sum(res) / length(res)


#zad6
simulate.zad6 <- function() {
ppl <- c(1:20)
x <- sample(ppl, 20, replace=F)
any(x[ppl] == ppl)
}
simulate.zad6()

res <- replicate(10000, simulate.zad6())
sum(res) / length(res)


#zad7
simulate.zad7 <- function() {
dirs <- c(0,1)
x <- sample(dirs, 3, replace=T)
sum(x) == 0 || sum(x) == 3
}
simulate.zad7()

res <- replicate(10000, simulate.zad7())
sum(res) / length(res)


#zad8
#A
simulate.zad8A <- function() {
eggs <- c(rep(0,6),rep(1,2))
i1 <- c(1,3,5,7)
i2 <- c(2,4,6,8)
x <- sample(eggs,8,replace=F)
sum(x[i1]) == 2 || sum(x[i2]) == 2
}
simulate.zad8A()

res <- replicate(10000, simulate.zad8A())
sum(res) / length(res)

#B
simulate.zad8B <- function() {
eggs <- c(rep(0,6),rep(1,2))
i1 <- c(1,3,5,7)
i2 <- c(2,4,6,8)
x <- sample(eggs,8,replace=F)
sum(x[i1]) == 1 && sum(x[i2]) == 1
}
simulate.zad8B()

res <- replicate(10000, simulate.zad8B())
sum(res) / length(res)

#C/D
simulate.zad8C <- function() {
eggs <- c(rep(0,6),rep(1,2))
i1 <- c(1,3,5,7)
i2 <- c(2,4,6,8)
x <- sample(eggs,8,replace=F)
sum(x[i1]) == 2 # / sum(x[i2]) == 2
}
simulate.zad8C()

res <- replicate(10000, simulate.zad8C())
sum(res) / length(res)


#zad9
simulate.zad9 <- function() {
ans <- c(0,0,0,1)
x <- sample(ans, 10, replace=T)
x
sum(x) >= 5
}
simulate.zad9()

res <- replicate(10000, simulate.zad9())
sum(res) / length(res)


#zad10
#A
simulate.zad10A <- function() {
prob <- c(rep(0,8), rep(1,92))
x <- sample(prob, 143, replace=T)
sum(x) <= 138
}
simulate.zad10A()

res <- replicate(10000, simulate.zad10A())
sum(res) / length(res)

#B
simulate.zad10B <- function() {
prob <- c(rep(0,8), rep(1,92))
x <- sample(prob, 143, replace=T)
sum(x) == 137
}
simulate.zad10B()

res <- replicate(10000, simulate.zad10B())
sum(res) / length(res)


#zad11
#A
simulate.zad11A <- function() {
b1 <- c(1,1,2,2)
b2 <- c(3,4,4,4,4)
dice <- c(1:6)
d <- sample(dice, 1,replace=T)
g1 <- sample(b1, 1, replace=T)
g2 <- sample(b2, 1, replace=T)
(d == 6 && g2 == 3) || (d != 6 && g1 == 1)
}
simulate.zad11A)

res <- replicate(10000, simulate.zad11A())
sum(res) / length(res)

#B
simulate.zad11B <- function() {
b1 <- c(1,1,2,2)
b2 <- c(3,4,4,4,4)
dice <- c(1:6)
d <- sample(dice, 1,replace=T)
g1 <- sample(b1, 1, replace=T)
g2 <- sample(b2, 1, replace=T)
(d == 6 && g2 == 3) || (d != 6 && g1 == 1)
}
simulate.zad11B()

res <- replicate(10000, simulate.zad11B())
sum(res) / length(res)
