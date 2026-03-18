Here’s a **quick, short README** you can drop alongside the script.

***

# Network Drive Shortcut Generator (PowerShell)

## Overview

This PowerShell script creates **clean desktop shortcuts** that map a network drive and open it automatically—without exposing users to batch files or command windows.

It works by:

*   Generating a **hidden `.bat` file** that maps a network drive
*   Creating a **`.lnk` shortcut** with a standard folder icon that points to the batch file
*   Placing the shortcut in a tidy folder on the user’s Desktop

Users only see and click the folder-style shortcut.

***

## What It Does

*   Maps a UNC path (e.g. `\\x.x.x.x\<folder_name>`) to a drive letter (e.g. `Z:`)
*   Removes any existing mapping to that drive letter first
*   Creates a **persistent** mapping (`/persistent:yes`)
*   Opens File Explorer to the mapped drive on success
*   Hides the underlying `.bat` file from the user

***

## Configuration

Edit these variables at the top of the script:

```powershell
$server = "\\x.x.x.x"      # Server name or IP
$folder = "<folder_name>" # Shared folder name
$drive1 = "Z:"             # Drive letter to map
```

***

## Output

*   **Desktop Folder:** `Desktop Shortcuts`
*   **Visible to User:** `<Folder_Name>.lnk` (folder icon)
*   **Hidden File:** `<Folder_Name>.bat` (handles mapping logic)

***

## Notes

*   Change `/persistent:yes` to `/persistent:no` for temporary mappings
*   Script runs in the **current user context**
*   Existing drive mappings for the chosen letter are removed automatically
*   Ideal for shared or non-technical users who just need “a folder to click”

***

## Example

    \\x.x.x.x\Finance  →  Z:

Click shortcut → drive maps → Explorer opens → user works normally.
