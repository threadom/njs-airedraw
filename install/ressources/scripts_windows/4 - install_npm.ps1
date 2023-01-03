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

# Npm installation

#sudo apt update
#sudo apt install npm
#npm cache clean --force
#npm update -g npm
choco install node
npm install -g npm
