@echo off
docker exec -d nginx-stress-container stress-ng --cpu 8 --vm 4 -t 2m

