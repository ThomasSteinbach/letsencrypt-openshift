sudo docker run -it --rm -p 443:443 -v "$PWD/letsencrypt-data":/etc/letsencrypt -e "EMAIL=thomass@aikq.de" -e "DOMAINS=*.xarif.de" thomass/pound-certbot
