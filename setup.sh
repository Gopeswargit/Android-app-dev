# setup.sh
#!/bin/bash

# VNC setup
vncserver :1 -geometry 1280x800 -depth 24

# Android Studio download and install
cd /home/vscode
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2023.2.1.25/android-studio-2023.2.1.25-linux.tar.gz
tar -xf android-studio-2023.2.1.25-linux.tar.gz
rm android-studio-2023.2.1.25-linux.tar.gz

