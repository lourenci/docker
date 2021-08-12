FROM lourenci/nvim:nightly-alpine

RUN apk add nodejs git npm openssh-client ripgrep build-base bash

RUN npm install -g typescript typescript-language-server vscode-langservers-extracted yaml-language-server \
  dockerfile-language-server-nodejs diagnostic-languageserver

RUN git clone https://github.com/wbthomason/packer.nvim \
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim && \
    git clone https://github.com/lourenci/dotfiles.git && \
    cd ./dotfiles && \
    mkdir ~/.config && \
    ln -s $PWD/vim/.vim ~/.config/nvim && \
    ln -s $PWD/vim/.vimrc ~/.config/nvim/init.vim && \
    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' && \
    nvim --headless -c 'TSInstallSync maintained' -c 'q'

WORKDIR /app
