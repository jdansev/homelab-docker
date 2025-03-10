FROM codercom/code-server:4.16.1-ubuntu

ENV DEBIAN_FRONTEND=noninteractive

# Preconfigure tzdata to avoid the prompt
RUN sudo ln -fs /usr/share/zoneinfo/UTC /etc/localtime && \
    sudo echo "tzdata tzdata/Areas select Etc" | sudo debconf-set-selections && \
    sudo echo "tzdata tzdata/Zones/Etc select UTC" | sudo debconf-set-selections

# Install development tools
RUN sudo apt update && sudo apt install -y \
  build-essential \
  curl \
  git \
  unzip \
  zip \
  python3 python3-pip \
  golang \
  && sudo rm -rf /var/lib/apt/lists/*

# Install Node.js and npm
ENV NODE_VERSION=23.9.0
ENV NPM_VERSION=11.2.0
# Install required dependencies and Node.js
RUN sudo apt update && sudo apt install -y curl xz-utils \
    && sudo curl -fsSL "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" -o node.tar.xz \
    && sudo tar -xJf node.tar.xz -C /usr/local --strip-components=1 \
    && sudo rm node.tar.xz \
    && sudo npm install -g npm@$NPM_VERSION \
    && sudo apt clean && sudo rm -rf /var/lib/apt/lists/*

# Verify installations
RUN sudo node -v && sudo npm -v

# Set working directory
WORKDIR /home/coder/workspace

# Expose code-server port
EXPOSE 8113
