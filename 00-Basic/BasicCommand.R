#수열
c(1,2,3)

#수열의 길이
length(c(1,2,3))

#합
sum(c(0:10))

#평균
mean(c(3,7))

#데이터 지정
x = sum(c(0:2), 10)

#Data Frame 생성
df = data.frame()

#Data Frame에 데이터 넣기1
df = data.frame(c(1,2,3), c(2,3,4))

#Data Frame에 데이터 넣기2
score = data.frame(math=c(80,90,100), english=c(60, 70, 80))

#Data Frame 데이터 확인()
score

#Data Frame 데이터 추출1
score$math

#Data Frame 데이터 추출2
mean(score$english)

#Data Frame에서 열(column)의 데이터 평균 
colMeans(score)

#Data Frame에서 행(row)의 데이터 평균 
rowMeans(score)

#Data Frame에서 열(column)의 데이터 합 
rowSums(score)

