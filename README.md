# Development Env

Development environment for Ubuntu 17.04.

## Getting started

Each page has it's own installer

```
sudo scripts/sbt.sh
```   

## Notes

Apt config

```
Acquire::http::proxy "http://emea-proxy.uk.oracle.com:80";
Acquire::https::proxy "http://emea-proxy.uk.oracle.com:80";
```

```
EMAIL="owain@owainlewis.com"

apt install -y git-core zsh emacs i3

git config --global user.email "${EMAIL}"
git config --global user.name "Owain Lewis"
```
