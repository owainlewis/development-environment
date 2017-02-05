function install_core_packages {
  apt-get update

  apt-get install -y \
	  open-vm-tools \
	  open-vm-tools-desktop \
	  i3 \
	  feh \
	  zsh \
	  nitrogen
}

function install_java 
  apt-get install openjdk-8-jdk
}

function configure_git {
    git config --global user.email "owain@owainlewis.com"
    git config --global user.name "Owain Lewis"
}

function install_spacemacs {
    rm -rf ~/.emacs.d && git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
}

function install_zsh {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

function install_haskell {
    curl -sSL https://get.haskellstack.org/ | sh
}

function setup_ssh {
    ssh-keygen -t rsa -b 4096 -C "owain@owainlewis.com"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
}

install_zsh
