
FROM naughtldy/embulk

RUN embulk mkbundle embulk/plugins && \
  cd embulk/plugins && \
  echo "gem 'embulk-input-mysql'" >> Gemfile && \
  echo "gem 'embulk-output-bigquery'" >> Gemfile && \
  embulk bundle --path=vendor/bundle

WORKDIR /work
