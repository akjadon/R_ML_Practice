# 1a
1:20


# 1b
20:1


# 1c
c(1:20, 19:1)


# 1d
tmp <- c(4, 6, 3)
tmp


# 1e
rep(c(4, 6, 3), 10)


# 1f
rep(c(4, 6, 3), length.out=31)


# 1g
rep(c(4, 6, 3), times=c(10, 20, 30))


# 2
x <- seq(from=3, to=6, by=0.1)
exp(x) * cos(x)


# 3a
powers1 <- seq(from=3, to=36, by=3)
powers2 <- seq(from=1, to=34, by=3)
0.1 ^ powers1 * 0.2 ^ powers2


# 3b
powers <- 1:25
2 ^ powers / powers


# 4a
i <- 10:100
sum(i^3 + 4*i^2)


# 4b
i <- 1:25
sum(2^i/i + 3^i/i^2)


# 5a
sequence <- 1:30
paste("label", sequence)


# 5b
sequence <- 1:30
paste("fn", sequence, sep="")


# 6
set.seed(50)
xVec <- sample(0:999, size=250, replace=TRUE)
yVec <- sample(0:999, size=250, replace=TRUE)


# 6a
yVec[-1] - xVec[-length(xVec)]


# 6b
sin(yVec[-length(yVec)]) / cos(xVec[-1])


# 6c
xVec[1:(length(xVec) - 2)] + 2 * xVec[2:(length(xVec) - 1)] - xVec[-1:-2]


# 6d
sum(exp(-xVec[-1]) / (xVec[-length(xVec)] + 10))


# 7
set.seed(50)
xVec <- sample(0:999, size=250, replace=TRUE)
yVec <- sample(0:999, size=250, replace=TRUE)


# 7a
yVec[yVec > 600]


# 7b
which(yVec > 600)


# 7c
xVec[yVec > 600]


# 7d
sqrt(abs(xVec - mean(xVec)))


# 7e
sum(yVec > max(yVec) - 200)


# 7f
sum(xVec %% 2 == 0)


# 7g
xVec[order(yVec)]


# 7h
yVec[c(T, F, F)]


# 8
numeratorVec <- seq(from=2, to=38, by=2)
denominatorVec <- numeratorVec + 1
fracVec <- c(1, numeratorVec / denominatorVec)
sum(cumprod(fracVec))
