# HTTP로 통신하는 Library
# install.packages('httr', repos='http://cran.nexr.com')
library(httr)

# Post방식으로 데이터 가져오기
# 크롬 개발자 도구에서 Network -> Method:POST -> Form Data 가져오기 -> R서식에 맞게 변형 : > = , '' 
data = POST('http://kostat.go.kr/',
            body = list(
              collection = 'ALL',
              query = '검색어',
              x = 37,
              y = 18)
)


# HTML 분석하는 Library
# install.packages('rvest', repos='http://cran.nexr.com')
library(rvest)

# HTML 분석
h_data = read_html(data)
html_nodes(h_data, 'title')

