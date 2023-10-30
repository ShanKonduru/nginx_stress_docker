@echo off
docker exec -it nginx-stress-container /usr/share/nginx/load_test.sh
