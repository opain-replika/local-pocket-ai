# local-pocket-ai
Termux-based tool for deploying local on-device LLM

## Features
* Easy one-command automated LLM model installation
* Run LLM straight from home screen via Termux:Widget
* Fully offline after initial installation you are able to run it - in mountains, forest or on plane

## Installation
1. Install Termux (from F-Droid)
1. Automated install
  ```shell
  curl -s https://raw.githubusercontent.com/opain-replika/local-pocket-ai/main/install.sh | bash
  ```
1. Manual install
  ```shell
  git clone https://github.com/opain-replika/local-pocket-ai
  cd local-pocket-ai
  ./install-pocket-ai.sh
  ```
## Usage
1. Run model either from Termux:Widget or by executing
  ```shell
  ~/.shortcuts/run-pocket-ai.sh
  ```
1. Open Web-based interface https://127.0.0.1:8080
