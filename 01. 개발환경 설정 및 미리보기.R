head(iris)
plot(iris)
1+2
num1 = 1+2
num1 = "Korea"
num1

num1<-2+3 # comment
num1

iris
tail(iris)

search() # comment
help(iris)
iris

head(iris)
tail(iris)

head(iris, 10)
help(head)
example(head)

aaa <- head(iris, 10)
aaa

ls()
rm(aaa) #remove memory

# 산술연산자
1+2
2*3
22 / 5
22 %% 5
22 %/% 5 # 나눗셈 정수값
2^2 #제곱

sqrt(8) # square root
abs(-10) #absolute num

# 난수출력 (>0, <1)
runif(10)

trunc(100.5)

# 정수로 100보다 작은 난수 10개 만들기
trunc(runif(10, 0, 100))

trunc(runif(10) * 100)

sort(unique(trunc(runif(6, min = 1, max = 45))))

round(100.567)
round(100.567, 2)

# 내장형 Dataset
data()
USAccDeaths
cars
head(Nile)
tail(Nile)

hist(Nile)

sd(Nile)

plot(iris)
# x, y 지정
plot(iris$Petal.Length,
     iris$Sepal.Length,
     col=iris$Species)

head(iris)
