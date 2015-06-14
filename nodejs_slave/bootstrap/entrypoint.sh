#!/bin/bash

export DISPLAY=:10
 /etc/init.d/xvfb start
Xvfb :10 -screen 0 1280x1024x24 -ac &
x11vnc -display :10 &
echo "Starting Google Chrome ..."
$JAVA_HOME_SEL/bin/java -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver -jar /usr/local/bin/selenium-server-standalone-2.45.0.jar

