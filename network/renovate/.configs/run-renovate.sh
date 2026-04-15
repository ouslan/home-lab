#!/bin/bash
# $1 is the mode (forgejo or codeberg)

if [ "$1" == "forgejo" ]; then
  export RENOVATE_TOKEN=$FORGEJO_TOKEN
  export RENOVATE_ENDPOINT="https://forgejo.prinf.io/api/v1"
  export RENOVATE_REPOSITORIES=$FORGEJO_REPOS
elif [ "$1" == "codeberg" ]; then
  export RENOVATE_TOKEN=$CODEBERG_TOKEN
  export RENOVATE_ENDPOINT="https://codeberg.org/api/v1"
  export RENOVATE_REPOSITORIES=$CODEBERG_REPOS
fi

renovate --platform=forgejo
