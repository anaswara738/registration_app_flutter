
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
        return windows;
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
    apiKey: 'AIzaSyCo-YR-dpvl_kcl9KjFt1H9w8R_V_5kGAk',
    appId: '1:1079153388353:web:cf57d84273b6414bee8fc0',
    messagingSenderId: '1079153388353',
    projectId: 'registration-9438e',
    authDomain: 'registration-9438e.firebaseapp.com',
    storageBucket: 'registration-9438e.firebasestorage.app',
    measurementId: 'G-31HPN0ZP03',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClBaPtuW9v8adiLvNlZooryZsbMX-yf1Y',
    appId: '1:1079153388353:android:0bfa23ecce988402ee8fc0',
    messagingSenderId: '1079153388353',
    projectId: 'registration-9438e',
    storageBucket: 'registration-9438e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBiF2Mstn_4_9HC3JGIgFyGnl_0u-lVg54',
    appId: '1:1079153388353:ios:5806c214165b0ec7ee8fc0',
    messagingSenderId: '1079153388353',
    projectId: 'registration-9438e',
    storageBucket: 'registration-9438e.firebasestorage.app',
    iosBundleId: 'com.example.registrationAppFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBiF2Mstn_4_9HC3JGIgFyGnl_0u-lVg54',
    appId: '1:1079153388353:ios:5806c214165b0ec7ee8fc0',
    messagingSenderId: '1079153388353',
    projectId: 'registration-9438e',
    storageBucket: 'registration-9438e.firebasestorage.app',
    iosBundleId: 'com.example.registrationAppFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCo-YR-dpvl_kcl9KjFt1H9w8R_V_5kGAk',
    appId: '1:1079153388353:web:e1b1a91f8f51cd2eee8fc0',
    messagingSenderId: '1079153388353',
    projectId: 'registration-9438e',
    authDomain: 'registration-9438e.firebaseapp.com',
    storageBucket: 'registration-9438e.firebasestorage.app',
    measurementId: 'G-289GJSYWTX',
  );
}
