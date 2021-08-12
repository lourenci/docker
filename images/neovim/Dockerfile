FROM alpine:latest

RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
  wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk && \
  apk add glibc-2.33-r0.apk
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-bin-2.33-r0.apk && \
  wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-i18n-2.33-r0.apk && \
  apk add glibc-bin-2.33-r0.apk glibc-i18n-2.33-r0.apk && \
  /usr/glibc-compat/bin/localedef -i en_US -f UTF-8 en_US.UTF-8

RUN wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage && \
  chmod u+x nvim.appimage && \
  ./nvim.appimage --appimage-extract && \
  ln -s $PWD/squashfs-root/usr/bin/nvim /usr/local/bin

ENTRYPOINT ["nvim"]
