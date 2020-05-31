FROM rust:1.43.1-stretch

RUN apt-get -y -q update \
  && apt-get install -y -q \
  libpq-dev \
  && cargo install diesel_cli --no-default-features --features postgres

ENV CARGO_BUILD_TARGET_DIR=/tmp/target

ENV USER=root
