$current_path = Split-Path -Parent $MyInvocation.MyCommand.Definition

& "./create_folders.sh" $current_path
& "./copy_files.sh" $current_path

& "./install_npm.sh" $current_path
& "./install_pnpm.sh" $current_path

& "./init_project.sh" $current_path

& "./install_typescript.sh" $current_path
& "./install_express.sh" $current_path
& "./install_nodemon.sh" $current_path
& "./install_sass.sh" $current_path

& "./update_scripts.sh" $current_path

Set-Location "$current_path\..\app"
npm run build
