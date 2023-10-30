@echo off
docker run -itd -p 8080:80 --name nginx-stress-container nginx_with_stress

