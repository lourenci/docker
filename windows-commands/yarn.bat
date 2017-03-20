@echo off
docker run --rm -it -v %cd%:/usr/src/app -w /usr/src/app jstools yarn %*
