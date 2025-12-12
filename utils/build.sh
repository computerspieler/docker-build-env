#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Please give two arguments: [YOUR PROJECT NAME] [debug OR release]"
    exit 1
fi

if [ ! -d "/opt/ndk/apps/$1" ]; then
    echo "Please give a valid project name"
    exit 1
fi

APP_FOLDER="/opt/ndk/apps/$1"
build_xml_path=$(find "$APP_FOLDER" -name "build.xml" -type f)
if [ -z "$build_xml_path" ]; then
    echo "Your project is not initialized, please run"
    echo " init [YOUR PROJECT NAME]"
    exit 1
fi

(cd /opt/ndk; make APP="$1") && (cd $(dirname "$build_xml_path"); ant "$2")
