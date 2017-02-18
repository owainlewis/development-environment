#!/bin/bash

EMAIL="owain@owainlewis.com"

install_core_packages () {

  sudo apt-get update

  sudo apt-get install -y \
	  open-vm-tools \
	  open-vm-tools-desktop \
	  i3 \
	  feh \
	  zsh \
	  nitrogen
}

install_java () {
  sudo apt-get install openjdk-8-jdk
}

configure_git () {
    git config --global user.email "owain@owainlewis.com"
    git config --global user.name "Owain Lewis"
}

install_spacemacs () {
    rm -rf ~/.emacs.d
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
}

install_zsh () {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

install_haskell () {
    curl -sSL https://get.haskellstack.org/ | sh
}

install_lein () {
    curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
    mv lein /usr/local/bin/lein
    chmod a+x /usr/local/bin/lein
    lein
}

install_golang () {
    sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
    sudo apt-get update
    sudo apt-get install golang
}

install_docker () {
    sudo apt-get install -y --no-install-recommends \
         apt-transport-https \
         ca-certificates \
         curl \
         software-properties-common

    curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -

    sudo add-apt-repository \
                "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

    sudo apt-get update

    sudo apt-get -y install docker-engine
}

setup_ssh () {
    ssh-keygen -t rsa -b 4096 -C "owain@owainlewis.com"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
}
