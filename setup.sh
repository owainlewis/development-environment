#!/bin/bash

USER="Owain Lewis"
EMAIL="owain@owainlewis.com"

apt install -y git zsh emacs i3

git config --global user.email "${EMAIL}"
git config --global user.name ${USER}
