#!/usr/bin/env bash

backup_dir=~/GoogleDrive/Personal/Configuration

declare -a rsync_dirs=(
                 "Library/Application Support/Hazel"
                 "Library/Application Support/IntelliJIdea2019.1"
                 "Library/Application Support/iTerm2"
                 "Library/Application Support/Launchbar"
                 "Library/Application Support/Keyboard Maestro"
                 "Library/Preferences/IntelliJIdea2019.1"
                 )

for dir in "${rsync_dirs[@]}"
do
    rsync -a --delete ~/"$dir/" $backup_dir/Home/"$dir"
done

declare -a pref_files=(
                 at.obdev.LaunchBar.*
                 com.jetbrains.intellij.plist
                 jetbrains*
                 com.googlecode.iterm2.*
                 com.noodlesoft.Hazel.plist
                 )

for pref_file in "${pref_files[@]}"
do
    cp ~/Library/Preferences/$pref_file $backup_dir/Home/Library/Preferences
done