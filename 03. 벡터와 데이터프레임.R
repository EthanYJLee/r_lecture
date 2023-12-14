# 135 12345678910 13579 123 123
c(seq(1, 5, 2), 1:10, seq(1, 10, 2), rep(1:3, 2))

head(iris)
irisTemp <- iris[1:5,c(-5)]

irisTemp

# 행과 열을 뒤집기
t(irisTemp)

# iris 데이터의 10의 배수 행만 출력하기
iris[seq(10, nrow(iris), 10),]

nrow(iris)
ncol(iris)

# iris의 1~10까지의 데이터중 Sepal.Length와 Sepal.Width만 출력하기
iris[1:10,1:2]
colnames(iris)
rownames(iris)
iris[1:10, c("Sepal.Length","Sepal.Width")]

# 기본 통계량
head(iris)
tail(iris)
str(iris)
summary(iris)
