## How to install it ?

1. Run `download.sh`
2. Run `docker build -t android-1.6 .`

And you're done !

## How to run it ?

Run `docker run -v "./apps:/opt/ndk/apps" -i -t android-1.6`, it will start a bash session.

Now you just have to:
1. Drop your application in the `apps` folder
2. Run `init [YOUR PROJECT NAME]` at least one
3. And now you can build your project using `build [YOUR PROJECT NAME] [debug OR release]`,

   and your APK should reside in a newly created `bin` folder!

## How can I integrate it in a script ?

`docker run -v "./apps:/opt/ndk/apps" -i -t android-1.6 -c 'build [YOUR PROJECT NAME] [debug OR release]'`

### Download links

- [android-ndk-1.6_r1-linux-x86.zip](https://dl.google.com/android/ndk/android-ndk-1.6_r1-linux-x86.zip)
- [android-sdk-linux_x86-1.6_r1.tgz](https://dl.google.com/android/archives/android-sdk-linux_x86-1.6_r1.tgz)
- [jdk-6u45-linux-i586.bin](https://www.oracle.com/java/technologies/javase-java-archive-javase6-downloads.html)
- [apache-ant-1.9.16-bin.tar.bz2](https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.16-bin.tar.bz2)
