#!/bin/bash -e

echo "================ Installing openjdk-9-jdk ================="
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-9-jdk
update-alternatives --set java /usr/lib/jvm/java-9-openjdk-amd64/jre/bin/java
update-alternatives --set javac /usr/lib/jvm/java-9-openjdk-amd64/bin/javac
add-apt-repository ppa:maarten-fonville/ppa
apt-get update
apt-get install icedtea-9-plugin
update-alternatives --set javaws /usr/lib/jvm/java-9-openjdk-amd64/jre/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-9-openjdk-amd64/jre/bin' >> $HOME/.bashrc
