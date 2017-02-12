install_core_packages () {
  apt-get update

  apt-get install -y \
	  open-vm-tools \
	  open-vm-tools-desktop \
	  i3 \
	  feh \
	  zsh \
	  nitrogen
}

install_java () {
  apt-get install openjdk-8-jdk
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

setup_ssh () {
    ssh-keygen -t rsa -b 4096 -C "owain@owainlewis.com"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
}

install_lein
