<#
This script creates hidden .bat files to map network drive, then .lnk wrapper
with folder icons. Users only see and click the clean .lnk shortcuts.

Targets examples:
  - \\x.x.x.x\<Folder_Name>      → Z:

Mappings are persistent (/persistent:yes). Change to :no for temporary.
#>

# === Define Variables ===
$server  = "\\x.x.x.x"  # IP address or server name
$folder  = "folder_name"     # Shared folder name on the server

# Properly build the UNC target path
$target1 = Join-Path -Path $server -ChildPath $folder

$drive1 = "Z:"

# Current user's Desktop and a tidy folder for the shortcut(s)
$desktop         = [Environment]::GetFolderPath('Desktop')
$shortcutFolder  = Join-Path $desktop 'Desktop Shortcuts'

# Create folder if missing
if (-not (Test-Path -LiteralPath $shortcutFolder)) {
    New-Item -Path $shortcutFolder -ItemType Directory -Force | Out-Null
}

# Hidden .bat path
$batch1 = Join-Path $shortcutFolder ("{0}.bat" -f $folder)

# Create the hidden batch file that maps the drive and opens it
# NOTE: This here-string is double-quoted to expand $drive1 and $target1 now.
@"
@echo off
REM Remove existing mapping quietly
net use $drive1 /delete /y >nul 2>&1

REM Map to the UNC path persistently
net use $drive1 "$target1" /persistent:yes

REM Open Explorer if successful, otherwise show a message
if %errorlevel% equ 0 (
    explorer $drive1
) else (
    echo Failed to map $drive1. Check path or credentials.
    pause
)
"@ | Set-Content -Path $batch1 -Encoding ASCII -Force

# Hide the .bat file (optional)
& attrib +h "$batch1" 2>$null

# Create clean .lnk wrapper with folder icon
$wShell = New-Object -ComObject WScript.Shell
$iconLocation = "%SystemRoot%\system32\shell32.dll,3"  # Standard yellow folder icon

# Build the .lnk
$lnk1 = Join-Path $shortcutFolder ("{0}.lnk" -f $folder)
$shortcut1 = $wShell.CreateShortcut($lnk1)
$shortcut1.TargetPath  = $batch1
$shortcut1.IconLocation = $iconLocation
$shortcut1.WindowStyle  = 1   # Normal window
$shortcut1.WorkingDirectory = $shortcutFolder
$shortcut1.Save()

Write-Host "Shortcut created:"
Write-Host "  - $lnk1  →  Maps $drive1 to $target1 and opens it"
Write-Host "Users see only the .lnk with a folder icon; the .bat remains hidden."