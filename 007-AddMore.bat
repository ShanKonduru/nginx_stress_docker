@echo off
docker build -t nginx_with_stress .

docker run -itd -p 8082:80 --name kill-me-container1 nginx_with_stress
docker run -itd -p 8083:80 --name kill-me-container2 nginx_with_stress
docker run -itd -p 8084:80 --name kill-me-container3 nginx_with_stress
docker run -itd -p 8085:80 --name kill-me-container4 nginx_with_stress
docker run -itd -p 8086:80 --name spare-me-container1 nginx_with_stress
docker run -itd -p 8087:80 --name spare-me-container2 nginx_with_stress
