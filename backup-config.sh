#!/usr/bin/env bash

rsync -a --delete ~/Library/Application\ Support/Launchbar ~/Documents/Personal/Configuration/Home/Library/Application\ Support
cp ~/Library/Preferences/at.obdev.LaunchBar.* ~/Documents/Personal/Configuration/Home/Library/Preferences