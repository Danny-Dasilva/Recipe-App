sudo chown -R $(whoami) $ANDROID_HOME
sudo apt-get install -y android-sdk-platform-tools
sdkmanager "platform-tools" "platforms;android-29"
androidsdk "platform-tools" "platforms;android-29"


flutter pub get