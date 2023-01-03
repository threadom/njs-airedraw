# Test argument and move to root path 

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

# Create directories

mkdir ./app > /dev/null
mkdir ./app/src > /dev/null
mkdir ./app/src/scss > /dev/null
mkdir ./app/src/ts > /dev/null
mkdir ./app/src/hbs > /dev/null
mkdir ./app/public > /dev/null
mkdir ./app/public/styles > /dev/null
mkdir ./app/public/scripts > /dev/null
mkdir ./app/public/pages > /dev/null
