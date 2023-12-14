# Scalar 변수
var1 <- 2
2 -> var2
var1 = 2

head(iris)
# vector data
iris$Sepal.Length
iris$Sepal.Length[1:10]

# 합계
sum(iris$Sepal.Length) + sum(iris$Sepal.Width)
sum(iris$Sepal.Length[1:10])

# 1부터 100까지 합
sum(1:100)

sum(10,20,30)

var1[1]
var1[2]

# vector 변수
num2 <- c(10, 20, 30) # combine
num2
num2[1:2]
num2[1] + num2[2]
sum(num2)

# NA (결측치)
sum(10,20,30,NA)
# remove not available
sum(10, 20, 30, NA, na.rm = TRUE)
sum(10, 20, 30, NA, na.rm = T)

# 자료형 확인
is.numeric(iris$Sepal.Length)
is.integer(iris$Sepal.Length)
is.double(iris$Sepal.Length)
class(iris$Sepal.Length)

# row + column = Data Frame
is.data.frame(iris)
class(iris)
is.na(iris)
is.na(iris$Sepal.Length)
# false = 0, true = 1
sum(is.na(iris$Sepal.Length))

# iris의 자료구조 확인하기
str(iris) # structure
# factor: 카테고리 (문자 + 숫자) (=index)
num1 <- "12345"
is.numeric(num1)
num2 <- 12345
is.numeric(num2)

# vector에 문자 숫자 섞여있으면 전부 문자로나옴
num3 <- c(1,2,3,"4",5)
is.numeric(num3)
num3

# 문자 => 숫자 변환 (as)
num4 <- as.numeric(num3)
num4
class(num4)
is.numeric(num4)
is.character(num4)

# Factor (요인형: 범주형 (category)) 변환
gender <- c("man", "woman", "woman", "man", "man")
gender
class(gender)

# 빈도수 확인
frequency()
table(gender)
# plot(gender)

# 문자열 데이터를 factor로 변환하기
Ngender <- as.factor(gender)
Ngender
table(Ngender)
plot(Ngender)

str(Ngender)

# 날짜형 변환
date1 <- "17/02/28"
date1

as.Date(date1, "%y/%m/%d")

date2 <- "17-02-28"
as.Date(date2, "%y-%m-%d")
date2

# 네자리 연도 : 대문자 Y
as.Date("2018/12/31", "%Y/%m/%d")

# 진짜 요일 데이터인지 확인하기
datas <- c("02/28/17", "02/29/17", "03/01/17")
datas
as.Date(datas, "%m/%d/%y")

# 날짜계산
mydates <- as.Date(c("2007-06-22", "2004-02-13"))
mydates
mydates[1] - mydates[2]

# 현재일자 기준으로 날짜 계산하기
Sys.Date()
class(Sys.Date())

Sys.Date() - as.Date("1993-11-14")
num1 <- 1234
as.character(num1)

# Vector 자료 구분
# - 1차원 선형 자료 구조 형태
# - 구성 : 변수[첨자], 첨자는 1부터 시작
# - 동일한 자료형의 데이터만 저장할 수 있다.
# - 벡터 생성 함수 : c(), seq(), rep(), :
# - 벡터 처리 함수 : sum(), mean(), sd(), union()

head(iris)
# iris의 Sepal.Length 컬럼의 내용을 1차원 벡터로 만들기
irisSepalLength <- iris$Sepal.Length
irisSepalLength

# 벡터인지 확인하기
is.vector(irisSepalLength)
sum(irisSepalLength)
mean(irisSepalLength)
max(irisSepalLength)
min(irisSepalLength)

irisPetalLength <- iris$Petal.Length
irisPetalLength
max(irisSepalLength)
max(irisPetalLength)
max(irisSepalLength)-max(irisPetalLength)
mean(irisSepalLength)-mean(irisPetalLength)

sd(irisSepalLength)
sd(irisPetalLength)

mean(irisSepalLength) - median(irisSepalLength)
mean(irisPetalLength) - median(irisPetalLength)

range(irisSepalLength)[1] == min(irisSepalLength)
range(irisPetalLength)

a <- c(1,2,3,4,5)
b <- mean(a)
sd(a)
((b-a[1])+(b-a[2])+(b-a[3])+(b-a[4])+(b-a[5])/5)

d <- c(irisSepalLength)
d
sum(d[1],d[10], d[11])

sum(irisSepalLength[(c(1,10,11))])

irisSepalLength[1:20]

sum(irisSepalLength[c(1:20, 30, 40)])

# 벡터형 자료의 일부를 변경
x <- c(10,20,30,40,50)
x
y <- replace(x, c(2,4), c(200, 400))
y

1:10

# 초기값, 최종값, 증가값으로 구성되는 벡터 함수 생성
seq(1,10,0.5)

# 1에서 10까지의 홀수, 1에서 10, 50, 60을 벡터로 만들어 합계 구하기
sum(c(seq(1, 10, 2), 1:10, 50, 60))

# repeat
rep(1:3, 3)
c(rep("red", 4), "green")
rep(c(1,4,7,9), 3)
rep(1:3, each=3)

# 1~20까지의 숫자중 짝수만 2번 반복하여 벡터 만들고 합계 구하기
sum(rep(seq(2, 20, 2), each=2))

x <- c(1,3,5,7)
y <- c(3,5)

# 합집합
union(x, y)
# 교집합
intersect(x, y)

# 차집합
setdiff(x, y)

# 난수생성
sample(1:10, 2)
sample(1:10, 10)
sort(sample(1:45, 6))

# iris의 Sepal.Length와 Petal.Length의 교집합 갯수
length(intersect(iris$Sepal.Length, iris$Petal.Length))

# iris의 Sepal.Length와 Petal.Length의 합집합 갯수
length(union(iris$Sepal.Length, iris$Petal.Length))

# 1차원 벡터 Data에 이름 설정하기
age <- c(30,35,40); age
names(age) <- c("유비", "관우", "장비"); age

# 중복값을 제거하기
iris$Sepal.Length
unique(iris$Sepal.Length)
unique(iris$Species)

x <- rep(c("a","b","c"),4); x
# 벡터에 a가 있으면 1을 보여준다
match(x, "a")
sum(match(x, "a"), NA, na.rm = TRUE)

table(match(x, c("a","b")))

name <- c("Apple", "Computer", "Samsung", "Communication")

# name에서 Co를 가지고 있는 단어의 번지수
grep("Co", name)
name[grep("Co", name)]

# name에서 om를 가지고 있는 단어 출력하기
name[grep("om", name)]

# 10번 ~ 전체 Data중 끝에서 5개는 빼고 출력
a <- 1:500
a[10:(length(a)-5)]

a <- 10:50;a
# 1번지 값 지우기
a <- a[-1];a

# 10, 11, 12번지 값 지우기
a <- 1:50
a <- a[-(10:12)];a

# a의 홀수번지 Data의 합계 구하기
sum(a[seq(1, length(a),2)])

# 최대값과 최소값의 차이가 3보다 큰지 확인
(max(a)-min(a))>3




