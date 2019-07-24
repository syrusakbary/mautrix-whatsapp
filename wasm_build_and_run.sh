#!/bin/bash

echo "Compiling project to WebAssembly..."
# Create the WebAssembly file
GOOS=js GOARCH=wasm go build -o main.wasm

echo "Running..."
# Now, we try to run it
node wasm_exec.js main.wasm
