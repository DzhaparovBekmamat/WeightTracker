import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAY_N0_L-dcU_8noqyVi7dSlWqPJAYoWkA',
    appId: '1:666590062097:web:7e8f2b73e1cbd15e6773b0',
    messagingSenderId: '666590062097',
    projectId: 'weight-tracker-fa63b',
    authDomain: 'weight-tracker-fa63b.firebaseapp.com',
    storageBucket: 'weight-tracker-fa63b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdEkn3XOfj1hpdxPKCKL9LXZXV3hMlwbw',
    appId: '1:666590062097:android:7d5e86553ed8dc8d6773b0',
    messagingSenderId: '666590062097',
    projectId: 'weight-tracker-fa63b',
    storageBucket: 'weight-tracker-fa63b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqjYCiujcw94k_f0Ojpb5NkQtlubbBJv0',
    appId: '1:666590062097:ios:59a0521acebbeb606773b0',
    messagingSenderId: '666590062097',
    projectId: 'weight-tracker-fa63b',
    storageBucket: 'weight-tracker-fa63b.appspot.com',
    iosClientId:
        '666590062097-k68mnook6ibn9b4m8b97ud2l9lme4j8b.apps.googleusercontent.com',
    iosBundleId: 'com.yusufcanmercan.weightTrackApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCqjYCiujcw94k_f0Ojpb5NkQtlubbBJv0',
    appId: '1:666590062097:ios:59a0521acebbeb606773b0',
    messagingSenderId: '666590062097',
    projectId: 'weight-tracker-fa63b',
    storageBucket: 'weight-tracker-fa63b.appspot.com',
    iosClientId:
        '666590062097-k68mnook6ibn9b4m8b97ud2l9lme4j8b.apps.googleusercontent.com',
    iosBundleId: 'com.yusufcanmercan.weightTrackApp',
  );
}
