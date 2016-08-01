library(httr)
res = GET('https://cran.r-project.org/web/packages/httr/httr.pdf')

# 해당 내용확인
content(res)

# 해당 내용저장(데이터 저장위치는 OS 구조에 맞춰 설정)
writeBin(content(res, 'raw'), 'httr.pdf')