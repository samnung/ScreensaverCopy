# ScreensaverCopy

This is simple script for copy screensaver images to jailbreaked Kindle Touch.

## Required

- Jailbreaked Kindle Touch
- Installed Launcher by Yifan Lu
- Uninstalled simple-screensaver by Yifan Lu

## Install

To install this extension, just copy folder `ScreensaverCopy` in this repo to folder `extension` in root of connected Kindle (via USB) (`/mnt/us`).

## Run

Images for screensaver must be in PNG format, not JPG renamed to PNG. Best resolution is 800 x 600 (create smaller image and watch).

1. Create folder `screensaver` in root folder of Kindle
2. Copy images to this folder
3. Unmount Kindle
4. Start Launcher and select ScreensaverCopy
5. Wait for 5-10 seconds (copying is slow)

All images (only PNG) will be copied to folder in Kindle  (`/usr/share/blanket/screensaver/`) and renamed to specific name format `bg_xsmall_ss[0-9][0-9]`.

## Warning

All original images will be removed. Just for case, original images are in folder `OriginalScreens` in this repo|archive.