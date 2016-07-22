library(httr)
library(rvest)
url = 'http://ko.pokr.kr/bill/'
htxt = read_html(url)

# 특정 node찾기
items = html_nodes(htxt, '.itemlist')
tables = html_nodes(items, '.table-condensed')
links = html_nodes(tables, 'a')
# text 데이터만 가져오기
bills = html_text(links)
