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

# Typescript installation

#npm install -g typescript
pnpm install -g typescript
#npm install --save-dev ts-loader
pnpm install --save-dev ts-loader