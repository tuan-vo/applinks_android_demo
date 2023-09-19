bước 1 : cài đặt go_router
 flutter pub add go_router
bước 2: tạo một đối tượng GoRouter trong tệp main.dart: 
Bước 3: Modify AndroidManifest.xml
Open the Flutter project with VS Code or Android Studio.
Navigate to android/app/src/main/AndroidManifest.xml file.
Add the following metadata tag and intent filter inside the <activity> tag with .MainActivity.
tạo key: ./gradlew signingReport