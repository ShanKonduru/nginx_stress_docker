REM run latest stable Pumba docker image (from master repository)
docker run -d -v /var/run/docker.sock:/var/run/docker.sock gaiaadm/pumba:master --interval 10s kill --signal SIGTERM re2:^kill-me
