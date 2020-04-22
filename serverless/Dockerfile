FROM node:lts
# Install NPM & Serverless
RUN npm install -g npm && \
  npm install -g serverless

# Setup Yarn packages
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# Install unzip and Python build tools to be able to install the AWS CLI tools.
RUN apt-get update && \
  apt-get install -y zip unzip python-dev

# Install AWS CLI tools.
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
  unzip awscli-bundle.zip && \
  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
