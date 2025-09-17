FROM debian:bookworm-slim

RUN dpkg --add-architecture i386
RUN apt update
RUN apt install -y lib32z1 make unzip bzip2 \
  libncurses5:i386 libstdc++6:i386

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
RUN tar xvf /archives/apache-ant-1.9.16-bin.tar.bz2 -C /opt
RUN mv /opt/apache-ant-1.9.16 $ANT_HOME 

# Install SDK
RUN tar xvf /archives/android-sdk-linux_x86-1.6_r1.tgz -C /opt
RUN mv /opt/android-sdk-linux_x86-1.6_r1 /opt/sdk
ENV PATH $PATH:/opt/sdk/tools

# Install NDK
RUN unzip /archives/android-ndk-1.6_r1-linux-x86.zip -d /opt
ENV NDKROOT /opt/ndk
RUN mv /opt/android-ndk-1.6_r1 $NDKROOT
RUN cd /opt/ndk; bash build/host-setup.sh

