# docker-ubuntu-texlive-ja

> Minimal TeX Live image for Japanese based on Ubuntu

Inspired by [Paperist/docker-alpine-texlive-ja], [toshi-ara/docker-alpine-texlive-ja] and [korosuke613/docker-ubuntu-texlive-ja].

[Paperist/docker-alpine-texlive-ja]: https://github.com/Paperist/docker-alpine-texlive-ja
[toshi-ara/docker-alpine-texlive-ja]: https://github.com/toshi-ara/docker-alpine-texlive-ja
[korosuke613/docker-ubuntu-texlive-ja]: https://github.com/korosuke613/docker-ubuntu-texlive-ja

## Usage

```bash
$ docker run --rm -it -v $PWD:/workdir derwind/ubuntu-texlive-ja
```

## Supplement

If you wish to install full packages, it suffices to replace `scheme-basic` by `scheme-full` in Dockerfile.
