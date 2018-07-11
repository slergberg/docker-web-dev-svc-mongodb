#!/usr/bin/env sh

# copied from https://github.com/docker-library/healthcheck/tree/master/mongo

set -x

healthcheck_server() {
  echo 'db.runCommand("ping").ok' | mongo localhost:27017/test --quiet \
    || exit 1
}

healthcheck_server
