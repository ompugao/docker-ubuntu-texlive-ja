# Copyright (c) 2019 Futa HIRAKOBA
# Released under the MIT license
# https://opensource.org/licenses/MIT

FROM ubuntu:22.04

# MAINTAINER Futa HIRAKOBA
MAINTAINER Shohei Fujii
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xdvik-ja \ 
    # evince \
    texlive-lang-cjk \
    latexmk \
    language-pack-ja \
    wget \
    xzdec \
    texlive-latex-extra \
    texlive-science \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN tlmgr init-usertree
RUN kanji-config-updmap-sys ipaex

WORKDIR /workdir

VOLUME ["/workdir"]

CMD ["bash"]
