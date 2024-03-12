ARG RUBY_VERSION=${RUBY_VERSION}
FROM ruby:$RUBY_VERSION-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/standardrb/standardrb-action"
LABEL "version"="0.1.0"

COPY lib /action/lib
COPY README.md LICENSE /

RUN gem install bundler

ENTRYPOINT ["/action/lib/entrypoint.sh"]
