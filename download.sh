#!/bin/sh

[ ! -e "archives/android-ndk-1.6_r1-linux-x86.zip" ] && curl "https://dl.google.com/android/ndk/android-ndk-1.6_r1-linux-x86.zip"         -o "archives/android-ndk-1.6_r1-linux-x86.zip"
[ ! -e "archives/android-sdk-linux_x86-1.6_r1.tgz" ] && curl "https://dl.google.com/android/archives/android-sdk-linux_x86-1.6_r1.tgz"    -o "archives/android-sdk-linux_x86-1.6_r1.tgz"
[ ! -e "archives/apache-ant-1.9.16-bin.tar.bz2" ]    && curl "https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.16-bin.tar.bz2" -o "archives/apache-ant-1.9.16-bin.tar.bz2"

