# **************************************************
# * Test argument and move to existing parent path 
# **************************************************

if [ $# -eq 0 ]; then
    echo "Error: No arguments provided"
    exit 1
fi

if ls -d "$1" > /dev/null 2>&1; then
    cd $1
    cd ..
else
    echo "Path does not exist"
    exit 1
fi

# **************************************************
# * Installation de Npm
# **************************************************

#sudo apt update
#sudo apt install npm
#npm cache clean --force
#npm update -g npm
sudo snap install node
npm init -y
