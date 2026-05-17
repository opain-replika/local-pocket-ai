#!/bin/bash

source "$HOME/.local/share/local-pocket-ai/config"

echo "Starting server"
llama-server \
  --ctx-size 8192 \
  -m "${MODEL}"
