@echo off
docker run --rm -it -v %cd%:/app -v c:/users/lourenci/.ssh:/root/.ssh -w /app jstools git %*
