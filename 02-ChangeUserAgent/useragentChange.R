library(httr)
# User Agent 정보 변경
# UA list (http://www.useragentstring.com/pages/useragentstring.php)
ua = user_agent('Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.1')
GET('www.cgv.co.kr', ua)
