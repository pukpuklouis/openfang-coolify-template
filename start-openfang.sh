#!/bin/sh
set -eu

OPENFANG_HOME="${OPENFANG_HOME:-/data}"
CONFIG_PATH_1="${OPENFANG_HOME}/config.toml"
CONFIG_PATH_2="${OPENFANG_HOME}/.openfang/config.toml"

mkdir -p "${OPENFANG_HOME}"

if [ ! -f "${CONFIG_PATH_1}" ] && [ ! -f "${CONFIG_PATH_2}" ]; then
  echo "Initializing OpenFang in ${OPENFANG_HOME}..."
  openfang init --quick
fi

exec openfang start
