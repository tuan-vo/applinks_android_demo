# App Links(Android)

Step 1: Add the go_router package, run flutter pub add:

```
    flutter pub add go_router
```

Step 2: To handle the routing, create a GoRouter object in the main.dart file:

```
    import 'package:flutter/material.dart';
    import 'package:go_router/go_router.dart';

    void main() => runApp(MaterialApp.router(routerConfig: router));

    final router = GoRouter(
    routes: [
        GoRoute(
        path: '/',
        builder: (_, __) => Scaffold(
            appBar: AppBar(title: const Text('Home Screen')),
            body: const Center(child: Text("Hello!")),
        ),
        routes: [
            GoRoute(
            path: 'details',
            builder: (_, __) => Scaffold(
                appBar: AppBar(title: const Text('Details Screen')),
            ),
            ),
        ],
        ),
    ],
    );
```

Step 3: Modify AndroidManifest.xml

1. Open the Flutter project with VS Code or Android Studio.
2. Navigate to android/app/src/main/AndroidManifest.xml file.
3. Add the following metadata tag and intent filter inside the <activity> tag with .MainActivity.

Replace example.com with your own web domain.

```
    <meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
    <intent-filter android:autoVerify="true">
        <action android:name="android.intent.action.VIEW" />
        <category android:name="android.intent.category.DEFAULT" />
        <category android:name="android.intent.category.BROWSABLE" />
        <data android:scheme="http" android:host="example.com" />
        <data android:scheme="https" />
    </intent-filter>
```

Step 4: Hosting assetlinks.json file

1. create file assetlinks.json
   Host an assetlinks.json file in using a web server with a domain that you own(yourWebiste\.well-known\assetlinks.json).

```
    [{
    "relation": ["delegate_permission/common.handle_all_urls"],
    "target": {
        "namespace": "android_app",
        "package_name": "com.example.deeplink_cookbook",
        "sha256_cert_fingerprints":
        ["yourSha256"]
    }
    }]
```

2. Get Sha256:
   Run the command in your app project

```
    cd android
```

```
    ./gradlew signingReport
```
