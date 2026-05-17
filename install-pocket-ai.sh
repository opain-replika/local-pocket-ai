#!/bin/bash

MODEL_PROVIDER="${MODEL_PROVIDER:-https://huggingface.co}"
MODEL="${MODEL:-prism-ml/Bonsai-8B-gguf/resolve/main/Bonsai-8B-Q1_0.gguf}"
MODEL_FILENAME="${MODEL##*/}"
MODEL_LOCATION="$HOME/.local/share/local-pocket-ai/models/${MODEL_FILENAME}"

echo "Installing dependencies"
pkg install -y llama-cpp

echo "Downloading model"
if [[ ! -d "${MODEL_LOCATION}" ]]; then
  mkdir -p "${MODEL_LOCATION}"
fi
  
curl -L \
  -o "${MODEL_LOCATION}" \
  "${MODEL_PROVIDER}/${MODEL}"

echo "Configuring environment"
cat > "$HOME/.local/share/local-pocket-ai/config" << EOF
  MODEL="${MODEL_LOCATION}"
EOF

echo "Installing scripts"
if [[ ! -d "$HOME/.shortcuts" ]]; then
  mkdir -p "$HOME/.shortcuts"
fi 
cp ./run-pocket-ai.sh "$HOME/.shortcuts"

echo "Done! You can start using ~/.shortcuts/run-pocket-ai.sh or run it from Termux:Widget"
