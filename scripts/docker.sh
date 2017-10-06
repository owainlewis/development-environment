apt install -y --no-install-recommends \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common

curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
sudo add-apt-repository \
	    "deb https://apt.dockerproject.org/repo/ \
   ubuntu-$(lsb_release -cs) \
   main"

apt update
apt -y install docker-engine
usermod -aG docker $USER
sg docker -c "bash"
