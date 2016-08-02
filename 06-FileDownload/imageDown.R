library(httr)
library(rvest)

h = read_html('http://gae9.com/trend/ttMg0H5p3mK#!hot')
imgs = html_nodes(h, 'div.trend-post-content img')
img.src = html_attr(imgs, 'src')

# 해당 내용이 있는 라인 확인
grep('ssproxy', img.src)
# 해당 내용만 추출하기
img.src = img.src[grep('ssproxy', img.src)]

# 이미지 갯수를 확인하여 반복횟수 설정
for(i in 1:length(img.src)){
  res = GET(img.src[i])
  # 파일 이름생성방법1
  # writeBin(content(res, 'raw'), paste0(i, '.jpg'))
  # 파일 이름생성방법2
  writeBin(content(res, 'raw'), sprintf('%03d.jpg', i))
}