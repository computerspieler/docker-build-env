FROM debian:bookworm-slim

RUN dpkg --add-architecture i386
RUN apt update
RUN apt install -y lib32z1 make unzip bzip2 \
  libncurses5:i386 libstdc++6:i386 file

COPY archives /archives

# Install java
ENV JAVA_HOME /opt/jdk
ENV PATH $PATH:$JAVA_HOME/bin
RUN chmod a+x /archives/jdk-6u45-linux-i586.bin
RUN /archives/jdk-6u45-linux-i586.bin
RUN mv /jdk1.6.0_45 $JAVA_HOME 

# Install Ant
ENV ANT_HOME /opt/ant
ENV PATH $PATH:$ANT_HOME/bin
RUN tar xjvf /archives/apache-ant-1.9.16-bin.tar.bz2 -C /opt
RUN mv /opt/apache-ant-1.9.16 $ANT_HOME 

# Install SDK
RUN tar xvf /archives/android-sdk-linux_x86-1.6_r1.tgz -C /opt
RUN mv /opt/android-sdk-linux_x86-1.6_r1 /opt/sdk
ENV PATH $PATH:/opt/sdk/tools

# Install NDK
RUN tar xjvf /archives/android-ndk-r9d-linux-x86_64.tar.bz2 -C /opt
ENV NDKROOT /opt/ndk
RUN mv /opt/android-ndk-r9d $NDKROOT
RUN mkdir /opt/ndk/apps

RUN useradd -ms /bin/bash user
RUN chmod -R +555 /opt
RUN chown -R user:user /opt
USER user
ENTRYPOINT ["/bin/bash"]
WORKDIR /opt/ndk

COPY utils/build.sh /usr/local/bin/build
COPY utils/init.sh /usr/local/bin/init

RUN mkdir -p /home/user/.android
RUN echo | keytool -genkey \
  -v -keystore /home/user/.android/debug.keystore \
  -alias 'androiddebugkey' \
  -storepass 'android' \
  -dname 'CN=Android Debug,O=Android,C=US'

