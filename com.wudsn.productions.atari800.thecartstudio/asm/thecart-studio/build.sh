#!/bin/sh
cd "$(dirname $0)"

set -e

TARGET=../../src/data
BINARY=../../bin/data

assemble() {
  mads "CartridgeTypeSampleCreator-$1.asm" -o:"${TARGET}/CartridgeTypeSampleCreator-$1.rom"
}

set -e
assemble Atari800
assemble Atari5200

rm -f "${TARGET}"/*.lab "${TARGET}"/*.lst

mkdir -p "${BINARY}"
cp -f "${TARGET}//CartridgeTypeSampleCreator-"*".rom" "${BINARY}"
