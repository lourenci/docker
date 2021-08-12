#!/bin/bash

docker run --rm -it -v $PWD:/app lourenci/nvim-ide:nightly-alpine $@
