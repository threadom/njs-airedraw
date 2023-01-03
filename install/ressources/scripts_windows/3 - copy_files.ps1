# Test argument and move to root path

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

# Copy default files

Copy-Item -Recurse -Path ".\install\default_files" -Destination .
Move-Item -Path ".\default_files" -Destination ".\app"
