library(httr)
library(rvest)
res = GET('http://news.naver.com/main/list.nhn?mode=LSD&mid=sec&sid1=001')

htxt = read_html(res)
# 해당 제목 링크 추출(특정 class 안의 tag만 선택)
link = html_nodes(htxt, 'div.list_body a')
# href 요소만 추출(unique로 같은 href값 중복제거)
article.href = unique(html_attr(link, 'href'))

# 위에서 추출한 링크안의 데이터 parse
for(href in article.href){
  GET(href)
}