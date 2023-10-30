@echo off
REM docker exec -d nginx-stress-container stress-ng --brk 0 --stack 0 --bigheap 0
docker exec -d nginx-stress-container stress-ng --vm 4 --vm-bytes 2G
