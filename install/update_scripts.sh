# **************************************************
# * Test argument and move to app path 
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

cd app

# add scripts section
if ! grep -q '"scripts"' package.json; then
  sed -i 's/\(.*\)}/\1,\n  "scripts": {\n}\n/' package.json
  echo "npm run build:ts a été ajouté à package.json"
fi

# add build:ts script entry
if ! grep -q '"build:ts": "tsc --outDir ./public/scripts/"' package.json; then
  sed -i '/scripts/a\    "build:ts": "tsc --outDir ./public/scripts/",' package.json
  echo "npm run build:ts a été ajouté à package.json"
fi

# add build:scss script entry
if ! grep -q '"build:scss": "node-sass ./src/scss -o ./public/styles"' package.json; then
  sed -i '/scripts/a\    "build:scss": "node-sass ./src/scss -o ./public/styles",' package.json
  echo "npm run build:scss a été ajouté à package.json"
fi

# add build script entry
if ! grep -q '"build": "npm run build:ts && npm run build:scss"' package.json; then
  sed -i '/scripts/a\    "build": "npm run build:ts && npm run build:scss",' package.json
  echo "npm run build a été ajouté à package.json"
fi

# add dev script entry
if ! grep -q '"dev": "webpack --mode development"' package.json; then
  sed -i '/scripts/a\    "dev": "webpack --mode development",' package.json
  echo "npm run dev a été ajouté à package.json"
fi

# add watch script entry
if ! grep -q '"watch": "webpack --mode development --watch"' package.json; then
  sed -i '/scripts/a\    "watch": "webpack --mode development --watch",' package.json
  echo "npm run watch a été ajouté à package.json"
fi

# add start script entry
if ! grep -q '"start": "nodemon --exec ts-node server.ts"' package.json; then
  sed -i '/scripts/a\    "start": "nodemon --exec ts-node server.ts",' package.json
  echo "npm run start a été ajouté à package.json"
fi
