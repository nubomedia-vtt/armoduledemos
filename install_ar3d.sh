#!/bin/bash
set -e -x
echo Installing armarkerdetector filter development environment
echo Version 2015-03-03
echo @author Markus Ylikerala, VTT, http://www.vtt.fi/

#######################################
# Note that version numbers etc may differ
# in the future eg the current 0.0.6-SNAPSHOT
#######################################

#######################################
# Tweak the TARGET variable if needed
# default is ~/nubomedia
#######################################
USER_HOME=$(eval echo ~${SUDO_USER})
TARGET=${USER_HOME}/nubomedia
mkdir -p $TARGET


#######################################
# The rest is going automagically
#######################################
cd $TARGET
AR3D=$TARGET/armoduledemos/ar3d

sudo apt-get install xinit -y
sudo apt-get install git -y
sudo apt-get install maven2 -y
sudo apt-get install libsoup2.4-dev -y
sudo apt-get install openjdk-7-jdk -y

wget -nd http://ssi.vtt.fi/ar-markerdetector-binaries/ar-markerdetector_0.0.6~rc1_java/armarkerdetector-0.0.6-SNAPSHOT.jar

wget -nd http://ssi.vtt.fi/ar-markerdetector-binaries/ar-markerdetector_0.0.6~rc1_java/pom.xml

mvn org.apache.maven.plugins:maven-install-plugin:2.5.2:install-file -Dfile=armarkerdetector-0.0.6-SNAPSHOT.jar -DpomFile=pom.xml

