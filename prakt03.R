Nrep = 10000

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
res <- replicate(Nrep, sim.coins())
res
#A)
sum(res[1,] == "1") / Nrep

#B)
res <- replicate(Nrep, sim.coins())
sum(res[1,]=="1" & res[2,]=="12") / sum(res[1,]=="1")


#zad13
sim.zad13 <- function() {
card <- sample(c("ww","bb","bw"), 1)

}


#zad14
sim.zad14 <- function() {
balls <- sample(c(1:99), 4, replace = F)
(balls[1] > balls[2] && balls[1] > balls[3] && balls[1] > balls[4])
}

sim.zad14()

res <- replicate(Nrep, sim.zad14())
sum(res) / Nrep


#zad15 ???????????????????
sim.zad15 <- function() {
draw <- sample(c(rep(1,2), c(rep(0,18))), 20)
indexes <- c(1:19)
any(draw[indexes] == 1 && draw[indexes+1] == 1)
}

sim.zad15()
res <- replicate(Nrep, sim.zad15())
sum(res) / Nrep


## !!!!!!!!!!!!!!!!!!!!!!!!
## binomen koeificient - choose(n,k)

#zad18 - 10 хвърляния на зар
# X ~ Bi(n=10, p=1/6)

#A)
# 2 шестици
# P(X=2)

dbinom(2, 10, 1/6)
choose(10,2)*((1/6)^2)*((5/6)^8)

#Б)
# <= 2 шестици
# P(X<=2)
pbinom(2, 10, 1/6)

#В) >= 2 шестици
1 - pbinom(1, 10, 1/6)
1 - dbinom(0,10,1/6) - dbinom(1,10,1/6)

#Г) между 3 и 8 шестици
# P(X<=8) - P(X<=2)
pbinom(8,10,1/6) - pbinom(2,10,1/6)
sum(dbinom(3:8,10,1/6))


#zad19
# Хвърляме зар докато се падне шестица

#A) вероятността да хвърлим <= 10(< 11) пъти

pgeom(10-1,1/6)

#Б) вероятността да хвърляме >= 6 пъти

1 - pgeom(5-1,1/6)


#zad20
# Хвърляме зар докато се паднат 3 шестици
# Вероятността да хвърлим не повече от 20 пъти
# X ~ NB(3,1/6)
# P(X<=20) = pnbinom(20-3, 3, 1/6)

pnbinom(20-3, 3, 1/6)


#zad21
1 - choose(5,2)*choose(3,0)/choose(8,2)

1 - dhyper(2,5,3,2)


#zad22
# Х - брой грешки на 1500 думи
# X ~ Bi(n=1500,p=1/500)
n <- 1500
p <- 1/500

#A) P(X <= 2)
pbinom(2,n,p)
ppois(2,n*p)

#Б) P(1 <= X <= 3) = P(X <= 3) - P(X = 0)
pbinom(3,n,p)-dbinom(0,n,p)
pbinom(3,n,p)-pbinom(0,n,p)
ppois(3,n*p)-dpois(0,n*p)
ppois(3,n*p)-ppois(0,n*p)


#zad23
# X - брой верни отговори дадени от Иван
# X ~ Bi(n=10,p=1/4)
# P(X >= 5) = 1 - P(X <= 4)

1 - pbinom(4,10,1/4)


#zad24
# X - брой пътници навреме
# X ~ Bi(n=143, n=0.92)

#A)
# P(X <= 138)
pbinom(138,143,0.92)

#Б)
# P(X = 137)
dbinom(137,143,0.92)


#zad25
#A)
# X - брой проверени батерии до откриване на първа дефектна
# X ~ Ge(p=0.03)
# P(X <= 10)
pgeom(10-1,0.03)

#Б)
# Y - брой дефектни след 50 проверени
# Y ~ Bi(n=50, p=0.03)
# P(Y >= 2) = 1 - P(Y <= 1)
1 - pbinom(1,50,0.03)
