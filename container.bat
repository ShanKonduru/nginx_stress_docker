@echo off
docker run -d -p 8080:80 --name nginx-stress-container nginx_with_stress stress --cpu 2 --io 1 --vm 2 --vm-bytes 128M --timeout 3600s

