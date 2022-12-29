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
# * Installation de EJS
# **************************************************

npm install -g ejs-cli
pnpm install -g ejs-cli
npm install -save-dev ejs-loader
pnpm install -D ejs-loader