library(httr)
url = 'http://ko.pokr.kr/bill/'
htxt = read_html(url)

# 특정 node찾기
library(rvest)
items = html_nodes(htxt, 'a')
items
tables = html_nodes(items, '.table-condensed')
links = html_nodes(tables, 'a')
# text 데이터만 가져오기
bills = html_text(links)
read_html(bills)


