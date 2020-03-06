#!/usr/bin/env bash

set -euo pipefail

if [[ -d ../go-cache ]]; then
  GOPATH=$(realpath ../go-cache)
  export GOPATH
fi

GOOS="linux" go build -ldflags='-s -w' -o bin/build github.com/paketoio/adopt-openjdk/cmd/build
GOOS="linux" go build -ldflags='-s -w' -o bin/class-counter github.com/paketoio/libjvm/cmd/class-counter
GOOS="linux" go build -ldflags='-s -w' -o bin/detect github.com/paketoio/adopt-openjdk/cmd/detect
GOOS="linux" go build -ldflags='-s -w' -o bin/link-local-dns github.com/paketoio/libjvm/cmd/link-local-dns
GOOS="linux" go build -ldflags='-s -w' -o bin/security-providers-configurer github.com/paketoio/libjvm/cmd/security-providers-configurer
