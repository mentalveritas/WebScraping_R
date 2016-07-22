# HTTP로 통신하는 Library
# install.packages('httr', repos='http://cran.nexr.com')
library(httr)

# Get방식으로 데이터 가져오기
data = GET('http://kostat.go.kr/')

# HTML 분석하는 Library
# install.packages('rvest', repos='http://cran.nexr.com')
library(rvest)

# HTML 분석
h_data = read_html(data)
html_nodes(h_data, 'title')
