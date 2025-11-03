#zad11 A)
simulate.zad11A <- function() {
b1 <- c(1,1,2,2)
b2 <- c(3,4,4,4,4)
dice <- c(1:6)
d <- sample(dice, 1,replace=T)
g1 <- sample(b1, 1, replace=T)
g2 <- sample(b2, 1, replace=T)
(d == 6 && g1 == 1) || (d != 6 && g2 == 3)
}

res <- replicate(10000, simulate.zad11A())
sum(res) / length(res)

#zad11 B)
simulate.zad11B <- function() {
b1 <- c(1,1,2,2)
b2 <- c(3,4,4,4,4)
dice <- c(1:6)
d <- sample(dice, 1,replace=T)
g1 <- sample(b1, 1, replace=T)
g2 <- sample(b2, 1, replace=T)
((d == 6 && g1 == 1) || (d != 6 && g2 == 3)) && d != 6
}

res <- replicate(10000, simulate.zad11B())
sum(res) / (length(res) / 2)


#zad 12
#A)
coin <- sample(c("11","11","22","12","12"), 1)
coin
side <- sample(c(1,2), 1) #koq strana na monetata se pada
side
up <- substr(coin,side,side) #substr za da vzemem chisloto ot tazi strana
up

sim.coins <- function() {
coin <- sample(c("11","11","22","12","12"), 1)
side <- sample(c(1,2), 1)
up <- substr(coin,side,side)
c(up, coin)
}

sim.coins()
res <- replicate(10000, sim.coins())
res
#A)
sum(res[1,] == "1") / length(res)

#B)
sum(res[1,]=="1" & res[2,]=="12") / sum(res[1,]=="1")
