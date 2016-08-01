library(httr)
library(rvest)
library(gdata)

# 야구 투수 성적 데이터 1~3위 성적 data.frame변환
res = GET('http://score.sports.media.daum.net/record/baseball/kbo/prnk.daum')
rhtml = read_html(res)
htxt = html_text(html_nodes(rhtml, 'tr.fst'))
# 데이터를 \n 단위로 
ss = strsplit(htxt, split="\n")
# 공백구간 제거
tr = trim(trim(ss))
df = t(data.frame(tr))
df
       
# 위의 데이터에서 1~18위 성적을 Matrix로 변환
hnode = html_nodes(rhtml, 'tbody')
htxt2 = html_text(hnode)
ss2 = strsplit(htxt2, split="\n")
tr2 = unlist(trim(ss2))
mtx = matrix(tr2, nrow=18, ncol=18, byrow=TRUE)
mtx