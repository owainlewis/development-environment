#!/bin/bash

EMAIL="owain@owainlewis.com"

install_core_packages () {
    for package in i3 feh zsh; do
        [[ $(apt-cache search $package) ]] && apt-get install -y $package
    done
}
