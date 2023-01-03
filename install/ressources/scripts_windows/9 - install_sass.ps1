# Test argument and move to app path

if (-not $args) {
    Write-Output "Error: No arguments provided"
    exit 1
}

if (Test-Path -PathType Container $args[0]) {
    Set-Location $args[0]
    Set-Location ..
} else {
    Write-Output "Path does not exist"
    exit 1
}

Set-Location ".\app"

# Sass installation

#npm install -g node-sass
pnpm install -g node-sass
#npm install --save-dev sass-loader
pnpm install --save-dev sass-loader