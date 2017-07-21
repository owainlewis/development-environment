#!/bin/bash

USER="Owain Lewis"
EMAIL="owain@owainlewis.com"

apt install -y git-core zsh emacs i3 feh

git config --global user.email "${EMAIL}"
git config --global user.name ${USER}
