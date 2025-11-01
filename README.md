## How to install it ?

1. Run `download.sh`
2. Run `docker build -t android-1.6 .`

And you're done !

## How to run it ?

Run `docker run -v "[PATH TO YOUR PROJECT]:/opt/ndk/apps/[YOUR PROJECT NAME]" -i -t android-1.6`, it will start a bash session.

Now you just have to:
1. Run `init [YOUR PROJECT NAME]` at least one
2. And now you can build your project using `build [YOUR PROJECT NAME] [debug OR release]`,

   and your APK should reside in a newly created `bin` folder!

## How can I integrate it in a script ?

`docker run -v "[PATH TO YOUR PROJECT]:/opt/ndk/apps/[YOUR PROJECT NAME]" -i -t android-1.6 -c 'build [YOUR PROJECT NAME] [debug OR release]'`

### Download links

- [android-ndk-r9d-linux-x86_64.tar.bz2](https://dl.google.com/android/ndk/android-ndk-r9d-linux-x86_64.tar.bz2)
- [android-sdk-linux_x86-1.6_r1.tgz](https://dl.google.com/android/archives/android-sdk-linux_x86-1.6_r1.tgz)
- [jdk-6u45-linux-i586.bin](https://www.oracle.com/java/technologies/javase-java-archive-javase6-downloads.html)
- [apache-ant-1.9.16-bin.tar.bz2](https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.16-bin.tar.bz2)
