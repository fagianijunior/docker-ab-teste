#!/bin/ash

while :
do
  ab -n 1 -c 1 -p post.txt -T 'application/x-www-form-urlencoded' -m POST \
    -H 'authority: staging.blogdobg.com.br' \
    -H 'cache-control: max-age=0' \
    -H 'upgrade-insecure-requests: 1' \
    -H 'origin: https://staging.blogdobg.com.br' \
    -H 'content-type: application/x-www-form-urlencoded' \
    -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36' \
    -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
    -H 'sec-fetch-site: same-origin' \
    -H 'sec-fetch-mode: navigate' \
    -H 'sec-fetch-user: ?1' \
    -H 'sec-fetch-dest: document' \
    -H 'referer: https://staging.blogdobg.com.br/brasil-se-aproxima-da-marca-de-260-mil-pacientes-curados-do-coronavirus/' \
    -H 'accept-language: pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
    -H 'cookie: __cfduid=d2a24a5b5b2ec83e77d30c628e330f27a1593812392; _ga=GA1.3.1108300235.1593812394; _gid=GA1.3.1724068496.1593812394; _gat=1; __gads=ID=733128484a115251:T=1593812394:S=ALNI_MboUKl-E9byvd3tEZieRcvk-02_Ig' \
    -v 1 https://staging.blogdobg.com.br/wp/wp-comments-post.php
  sleep 16
done
