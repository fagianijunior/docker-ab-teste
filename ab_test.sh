#!/bin/ash

count=0

while :
do
  curl -i \
    'authority: staging.blogdobg.com.br' \
    'cache-control: max-age=0' \
    'upgrade-insecure-requests: 1' \
    'origin: https://staging.blogdobg.com.br' \
    'content-type: application/x-www-form-urlencoded' \
    'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36' \
    'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
    'sec-fetch-site: same-origin' \
    'sec-fetch-mode: navigate' \
    'sec-fetch-user: ?1' \
    'sec-fetch-dest: document' \
    'referer: https://staging.blogdobg.com.br/brasil-se-aproxima-da-marca-de-260-mil-pacientes-curados-do-coronavirus/' \
    'accept-language: pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
    'cookie: __cfduid=d2a24a5b5b2ec83e77d30c628e330f27a1593812392; _ga=GA1.3.1108300235.1593812394; _gid=GA1.3.1724068496.1593812394; _gat=1; __gads=ID=733128484a115251:T=1593812394:S=ALNI_MboUKl-E9byvd3tEZieRcvk-02_Ig' \
    --data-raw "comment=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)&author=CarlosFagiani&email=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1)%40g.com&submit=ENVIAR&comment_post_ID=627410&comment_parent=0&akismet_comment_nonce=ef6c61d47e&_wp_unfiltered_html_comment=a3ff7a87b5&ak_js=214" \
    --compressed https://staging.blogdobg.com.br/wp/wp-comments-post.php
  sleep 16
done
