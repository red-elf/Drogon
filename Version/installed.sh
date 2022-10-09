#!/bin/bash

HERE="$(pwd)"
VERSION="\#define DROGON_VERSION "
VERSION_SCRIPT="$HERE/Version/version.sh"

if ! test -e "$VERSION_SCRIPT"; then

  echo "ERROR: The version script was not found at path: '$VERSION_SCRIPT'"
  exit 1
fi

# shellcheck disable=SC1090
. "$VERSION_SCRIPT"

INCLUDE_VERSION_FILE="/usr/local/include/drogon/version.h"

# shellcheck disable=SC2002
RAW="$(test -e "$INCLUDE_VERSION_FILE" && cat "$INCLUDE_VERSION_FILE" | grep "$VERSION")" && \
  echo "${RAW/$VERSION/}" | xargs