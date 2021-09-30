FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /usr/local/texlive/2021/bin/x86_64-linux:$PATH

RUN dpkg --add-architecture amd64 && \
    apt update && apt install -y \
    curl perl wget libfontconfig1:amd64 && \
    mkdir /tmp/install-tl-unx && \
    curl -L ftp://tug.org/historic/systems/texlive/2021/install-tl-unx.tar.gz | \
      tar -xz -C /tmp/install-tl-unx --strip-components=1 && \
    printf "%s\n" \
      "selected_scheme scheme-basic" \
      "tlpdbopt_install_docfiles 0" \
      "tlpdbopt_install_srcfiles 0" \
      > /tmp/install-tl-unx/texlive.profile && \
    /tmp/install-tl-unx/install-tl \
      --profile=/tmp/install-tl-unx/texlive.profile && \
    tlmgr install \
      collection-latexextra \
      collection-fontsrecommended \
      collection-langjapanese \
      latexmk && \
    rm -rf /tmp/install-tl-unx && \
    apt clean -y && \
    apt autoremove -y && \
    apt autoclean -y && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workdir

VOLUME ["/workdir"]

CMD ["bash"]
