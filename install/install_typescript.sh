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
# * Installation de Typescript
# **************************************************

npm install -g typescript
pnpm install -g typescript
npm install -save-dev ts-loader
pnpm install -D ts-loader