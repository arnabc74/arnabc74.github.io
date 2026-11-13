##Step 1: aapt2 compile and link
"$ANDROID_HOME/build-tools/34.0.0/aapt2" compile \
  res/layout/lay.xml 
  
"$ANDROID_HOME/build-tools/34.0.0/aapt2" link \
  -o base.apk \
  --manifest AndroidManifest.xml \
  -I "$ANDROID_HOME/platforms/android-35/android.jar" \
  --min-sdk-version 23 \
  --target-sdk-version 35\
  --java gen\
  layout_

##Step 2: javac

mkdir -p ~/campapk/stage2/src/com/example/helloworld
cd ~/campapk/stage2

mkdir -p classes

javac \
  -classpath "$ANDROID_HOME/platforms/android-35/android.jar" \
  -d classes \
  src/com/example/helloworld/MainActivity.java


##Step 3: dex

mkdir -p dex

"$ANDROID_HOME/build-tools/34.0.0/d8" \
  --lib "$ANDROID_HOME/platforms/android-35/android.jar" \
  --min-api 23 \
  --output dex \
  classes/com/example/helloworld/MainActivity.class

cp linked/base.apk app-unsigned.apk

zip -j app-unsigned.apk dex/classes.dex

##Step 4: zipalign

"$ANDROID_HOME/build-tools/34.0.0/zipalign" \
  -f -v 4 \
  app-unsigned.apk \
  app-aligned.apk

"$ANDROID_HOME/build-tools/34.0.0/zipalign" \
  -c -v 4 app-aligned.apk

##Step 5: Signing

keytool -genkeypair \
  -keystore debug.keystore \
  -alias androiddebugkey \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000 \
  -storepass android \
  -keypass android \
  -dname "CN=Android Debug,O=Android,C=US"

"$ANDROID_HOME/build-tools/34.0.0/apksigner" sign \
  --ks debug.keystore \
  --ks-key-alias androiddebugkey \
  --ks-pass pass:android \
  --key-pass pass:android \
  --out app-debug.apk \
  app-aligned.apk

"$ANDROID_HOME/build-tools/34.0.0/apksigner" verify \
  --verbose \
  --print-certs \
  app-debug.apk
