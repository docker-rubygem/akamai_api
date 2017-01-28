FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.2

RUN gem install akamai_api --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["akamai_api"]
CMD ["--help"]
