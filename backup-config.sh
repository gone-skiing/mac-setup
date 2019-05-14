#!/usr/bin/env bash

backup_dir=~/GoogleDrive/Personal/Configuration

rsync -a --delete ~/Library/Application\ Support/Launchbar $backup_dir/Home/Library/Application\ Support
cp ~/Library/Preferences/at.obdev.LaunchBar.* $backup_dir/Home/Library/Preferences