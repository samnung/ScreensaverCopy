# ScreensaverCopy

This is simple script for copy screensaver images to jailbreaked Kindle Touch.

## Required

- Jailbreaked Kindle Touch
- Installed Launcher by Yifan Lu

## Install

To install this extension, just copy folder `ScreensaverCopy` in this repo to folder `extension` in root of connected Kindle (via USB) (`/mnt/us`).

## Run

For running just create folder 'screensaver' in root folder of Kindle. Copy images to this folder and unmount Kindle.

After that just run Launcher and select ScreensaverCopy. All images (only PNG) will be copied to folder in Kindle  (`/usr/share/blanket/screensaver/`) and renamed to specific name format `bg_xsmall_ss[0-9][0-9]`.

## Warning

All original images will be removed. Just for case, original images are in folder `OriginalScreens` in this repo.