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

mkdir ./src > /dev/null

# **************************************************
# * Copy typescript default files
# **************************************************

mkdir ./src/ts > /dev/null

cat ./install/default_files/app.ts > ./src/ts/app.ts
cat ./install/default_files/tsconfig.json > ./tsconfig.json

# **************************************************
# * Copy sass default files
# **************************************************

mkdir ./src/scss > /dev/null

cat ./install/default_files/style.scss > ./src/scss/style.scss

# **************************************************
# * Copy sass default files
# **************************************************

mkdir ./src/ejs > /dev/null

cat ./install/default_files/index.ejs > ./src/ejs/index.ejs

# **************************************************
# * Copy tensorflow default files
# **************************************************

mkdir ./src/ts > /dev/null

cat ./install/default_files/tensorflow.ts > ./src/ts/tensorflow.ts

# **************************************************
# * Copy webpack default files
# **************************************************

cat ./install/default_files/webpack.config.js > ./webpack.config.js
