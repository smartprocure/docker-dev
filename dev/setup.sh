#!/bin/bash

# For git - if using git locally in cloud9 changes panel/terminal and not ungit or host client
cd ~/.ssh
chmod 600 id_rsa

# Install required C compiler and libraries.
apt-get update; yes Y | apt-get install ssh
yes Y | apt-get install build-essential
yes Y | apt-get install apt-utils
yes Y | apt-get install openssl
yes Y | apt install libssl-dev

# Get Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install and use an specific node and npm version.
NODE_VERSION="v7.10.0"
nvm install $NODE_VERSION
nvm use $NODE_VERSION
nvm alias default $NODE_VERSION
