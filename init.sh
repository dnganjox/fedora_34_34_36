#!/bin/bash

#echo 'intel'| sudo -s apt update 
#echo 'intel'| sudo -s apt upgrade -y
dnf update

#adding ONEAPICI PV Teams requirements
dnf  install python3.8 -y
dnf groupinstall "Development Tools" "Development Libraries" #install gcc
dnf  search openjdk 
sudo dnf install java-11-openjdk-devel.x86_64
export JAVA_HOME=/usr/lib/jvm/openjdk-13-jdk
export JAVA_HOME=$PATH:$JAVA_HOME/bin

#dnf  install software-properties-common -y
#add-apt-repository ppa:deadsnakes/ppa
#dnf install java-latest-openjdk-devel.x86_64 to install the latest version