@echo off
docker exec -d nginx-stress-container stress-ng --sequential 4 --timeout 6m --metrics