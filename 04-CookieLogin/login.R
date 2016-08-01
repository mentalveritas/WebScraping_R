library(httr)

res = POST('https://member.mk.co.kr/mem/v1/action.php',
           body = list(
             c = 'login_action',
             successUrl = 'http://www.mk.co.kr/',
             id = 'id입력',
             pw = 'pw입력'
             ))

# 받아온 쿠키 확인
cookies(res)
# 쿠키설정하기(list형태를 vector로 넘기기 위하여 unlist사용)
rr = set_cookies(.cookies = unlist(cookies(res)))

# 로그인성공 체크
logchk = GET('https://member.mk.co.kr/mem/updateUser.php', rr)
library(rvest)
htxt = read_html(logchk)
member = html_nodes(htxt, 'strong')
member