docker-compose exec nginx /bin/bash -c "envsubst < /etc/nginx/sites-available/project.conf > /etc/nginx/sites-enabled/10-project.conf"
docker-compose restart nginx