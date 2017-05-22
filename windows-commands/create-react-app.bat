@echo off
docker run --rm -it -v %cd%:/usr/src/app -w /usr/src/app --expose=8080 -p=8080:8080 jstools create-react-app %*
