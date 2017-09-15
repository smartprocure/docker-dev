#!/bin/bash

# For git - if using git locally in cloud9 changes panel/terminal and not ungit or host client
cd ~/.ssh
chmod 600 id_rsa
apt-get update; yes Y | apt-get install ssh

cd /workspace/code

# Clone main-application code
git clone git@github.com:smartprocure/main-application.git

# Clone marketplace code
git clone git@github.com:smartprocure/marketplace.git

# Setup main-application
cd /workspace/code/main-application/setup
# cp -f /workspace/transfer/node-tools.sh .
bash dev.sh
cd /workspace/code/main-application/client
source ~/.bashrc
gulp babel
echo "Setup is complete please reload the terminal before launching any application."
