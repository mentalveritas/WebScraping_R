library(httr)
url = 'http://ko.pokr.kr/bill/'

# 특정 node찾기
library(rvest)
htxt = read_html(url)
items = html_nodes(htxt, 'div.itemlist')
tables = html_nodes(items, '.table-condensed')
links = html_nodes(tables, 'a')
# text 데이터만 가져오기
bills = html_text(links)
bills
