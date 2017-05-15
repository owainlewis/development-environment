ssh-keygen -t rsa -b 4096 -C "owain@owainlewis.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

echo "SSH Key Public"

cat ~/.ssh/id_rsa.pub
