#!/usr/bin/env bash

# update all existing packages
sudo yum -y update

# install wget and dos2unix
sudo yum -y install wget
sudo yum -y install dos2unix

# download java
sudo wget --no-cookies \
--no-check-certificate \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm" \
-O /tmp/jdk-8-linux-x64.rpm

# install java
sudo yum -y install /tmp/jdk-8-linux-x64.rpm
sudo rm /tmp/jdk-8-linux-x64.rpm
