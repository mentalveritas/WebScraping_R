# HTTP로 통신하는 Library (라이브러리 설치 필요)
# install.packages('httr', repos='http://cran.nexr.com')
library(httr)

# Get방식으로 데이터 가져오기
data = GET('http://kostat.go.kr/')