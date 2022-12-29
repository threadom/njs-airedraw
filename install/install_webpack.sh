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
# * Installation de Webpack
# **************************************************

npm install --save-dev webpack webpack-cli
pnpm install -D webpack webpack-cli

# add build:ts script entry
if sed -n '/scripts/{/build:ts/{p;q}}' package.json; then
  sed -i '/scripts/a\"build:ts": "tsc --outDir ./public/scripts/",' package.json
  echo "npm run build:ts a été ajouté à package.json"
else
  echo "npm run build:ts existe déjà dans package.json"
fi

# add build:scss script entry
if sed -n '/scripts/{/build:scss/{p;q}}' package.json; then
  sed -i '/scripts/a\"build:scss": "node-sass ./src/sass -o ./public/styles/",' package.json
  echo "npm run build:scss a été ajouté à package.json"
else
  echo "npm run build:scss existe déjà dans package.json"
fi

# add build:ejs script entry
if sed -n '/scripts/{/build:ejs/{p;q}}' package.json; then
  sed -i '/scripts/a\"build:ejs": "ejs-cli ./src/ejs/ --out-dir ./public/views/",' package.json
  echo "npm run build:ejs a été ajouté à package.json"
else
  echo "npm run build:ejs existe déjà dans package.json"
fi

# add build script entry
if sed -n '/scripts/{/build/{p;q}}' package.json; then
  sed -i '/scripts/a\"build": "npm run build:ts && npm run build:sass && npm run build:ejs",' package.json
  echo "npm run build a été ajouté à package.json"
else
  echo "npm run build existe déjà dans package.json"
fi

# add dev script entry
if sed -n '/scripts/{/dev/{p;q}}' package.json; then
  sed -i '/scripts/a\"dev": "webpack --mode development",' package.json
  echo "npm run dev a été ajouté à package.json"
else
  echo "npm run dev existe déjà dans package.json"
fi

# add watch script entry
if sed -n '/scripts/{/watch/{p;q}}' package.json; then
  sed -i '/scripts/a\"watch": "webpack --mode development --watch",' package.json
  echo "npm run watch a été ajouté à package.json"
else
  echo "npm run watch existe déjà dans package.json"
fi

# add start script entry
if sed -n '/scripts/{/start/{p;q}}' package.json; then
  sed -i '/scripts/a\"start": "webpack-dev-server --mode development --open",' package.json
  echo "npm run start a été ajouté à package.json"
else
  echo "npm run start existe déjà dans package.json"
fi
