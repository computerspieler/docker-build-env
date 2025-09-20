## How to install it ?

1. Run `download.sh`
2. Run `docker build -t android-1.6 .`

And you're done !

## How to run it ?

Run `docker run -v "./apps:/opt/ndk/apps" -i -t android-1.6`, it will start a bash session.

Now you just have to drop your application in the `apps` folder and run `MAKE=[NAME OF YOUR APP]`.

### Download links

- [android-ndk-1.6_r1-linux-x86.zip](https://dl.google.com/android/ndk/android-ndk-1.6_r1-linux-x86.zip)
- [android-sdk-linux_x86-1.6_r1.tgz](https://dl.google.com/android/archives/android-sdk-linux_x86-1.6_r1.tgz)
- [jdk-6u45-linux-i586.bin](https://www.oracle.com/java/technologies/javase-java-archive-javase6-downloads.html)
- [apache-ant-1.9.16-bin.tar.bz2](https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.16-bin.tar.bz2)
