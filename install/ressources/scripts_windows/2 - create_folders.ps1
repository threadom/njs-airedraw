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

# Create directories

New-Item -ItemType Directory -Path ".\app" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\src" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\src\scss" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\src\ts" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\src\hbs" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\public" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\public\styles" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\public\scripts" -ErrorAction Ignore | Out-Null
New-Item -ItemType Directory -Path ".\app\public\pages" -ErrorAction Ignore | Out-Null
