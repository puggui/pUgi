#!/bin/sh

cd "$(dirname "$0")"

if [ ! -d ./build/ ]; then
  mkdir build
fi

cd build/

cmake ..

cmake --build .

ln -sf compile_commands.json ../compile_commands.json
