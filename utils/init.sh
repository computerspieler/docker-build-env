#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Please give one argument: [YOUR PROJECT NAME]"
    exit 1
fi

if [ ! -d "/opt/ndk/apps/$1" ]; then
    echo "Please give a valid project name"
    exit 1
fi

android_manifest_path=$(find "/opt/ndk/apps/$1" -name "AndroidManifest.xml" -type f)
if [ -z "$android_manifest_path" ]; then
    echo "Your project does not contains a manitest"
    echo "And therefore cannot be deemed an android project"
    exit 1
fi

project_dir=$(dirname "$android_manifest_path")
android update project -p "$project_dir"

echo You can now build your project !
