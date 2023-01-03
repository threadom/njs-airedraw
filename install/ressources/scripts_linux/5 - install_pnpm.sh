# Test argument and move to app path 

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

cd app

# Pnpm installation

npm install -g pnpm
pnpm update pnpm
pnpm setup
