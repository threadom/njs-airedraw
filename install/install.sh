current_path=$(dirname $0)

./install_npm.sh $current_path
./install_pnpm.sh $current_path
./install_typescript.sh $current_path
./install_sass.sh $current_path
./install_ejs.sh $current_path
./install_webpack.sh $current_path
./install_tensorflow.sh $current_path
./install_files.sh $current_path

cd $current_path
cd ..

npm run build