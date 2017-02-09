@echo off
docker run --rm -v %cd%:/app -v c:/users/lourenci/.ssh:/root/.ssh composer/composer:alpine %*
