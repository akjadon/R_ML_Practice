# 1
A <- rbind(c( 1,  1,  3),
           c( 5,  2,  6),
           c(-2, -1, -3))


# 1a
ACube <- A %*% A %*% A
all(ACube == 0)


# 1b
A[, 3] <- A[, 2] + A[, 3]


# 2
B <- matrix(rep(c(10, -10, 10), times=15), nrow=15)
crossprod(B)


# 3
matE <- matrix(0, nrow=6, ncol=6)
ifelse(abs(row(matE) - col(matE)) == 1, 1, 0)


# 4
size <- 5
outer(0:(size - 1), 0:(size - 1), "+")


# 5a
size <- 5
outer(0:(size - 1), 0:(size - 1), "+") %% size


# 5b
size <- 10
outer(0:(size - 1), 0:(size - 1), "+") %% size


# 5c
size <- 9
outer(0:(size - 1), 0:(size - 1), "-") %% size


# 6
A <- abs(outer(1:5, 1:5, "-")) + 1
y <- c(7, -1, -3, 5, 17)
solve(A, y)


# 7
set.seed(75)
aMat <- matrix(sample(10, size=60, replace=TRUE), nrow=6)


# 7a
rowSums(aMat > 4)


# 7b
which(rowSums(aMat == 7) == 2)


# 7c
columnSums <- colSums(aMat)
which(outer(columnSums, columnSums, "+") > 75, arr.ind=TRUE)


# 8a
sum(outer(1:20, 1:5, function(i, j) {
    i ^ 4 / (3 + j)
}))


# 8b
sum(outer(1:20, 1:5, function(i, j) {
    i ^ 4 / (3 + i * j)
}))


# 8c
sum(outer(1:10, 1:10, function(i, j) {
    ifelse(j <= i, i ^ 4 / (3 + i * j), 0)
}))
