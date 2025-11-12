#!/usr/bin/env bash

# Part 1/2
# Official Node Install
# https://nodejs.org/en/download

# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 20

# Verify the Node.js version:
node -v # Should print "v20.19.5".

# Verify npm version:
npm -v # Should print "10.8.2".


# Part 2/2: Install dependencies
npm install
