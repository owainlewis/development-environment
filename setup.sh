#!/bin/bash

EMAIL="owain@owainlewis.com"

install_core_packages () {
    for package in open-vm-tools open-vm-tools-desktop i3 feh zsh; do
        [[ $(apt-cache search $package) ]] && apt-get install -y $package
    done
}

install_java () {
  sudo apt-get install openjdk-8-jdk
}

configure_git () {
    git config --global user.email "owain@owainlewis.com"
    git config --global user.name "Owain Lewis"
}

install_nodejs () {
    curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
    sudo apt-get update -y
    sudo apt-get install -y nodejs
}

install_spacemacs () {
    rm -rf ~/.emacs.d
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
}

install_ansible () {
    sudo apt-get install software-properties-common
    sudo apt-add-repository ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install -y ansible
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

install_sbt () {
    echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
    sudo apt-get update
    sudo apt-get install sbt
}
