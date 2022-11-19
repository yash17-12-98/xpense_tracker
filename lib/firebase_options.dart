// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKvqF2umZQseuQG1_em-gkM43VDlIcO0I',
    appId: '1:712566736025:android:846a5199275f264ce02408',
    messagingSenderId: '712566736025',
    projectId: 'xpensertracker',
    databaseURL: 'https://xpensertracker-default-rtdb.firebaseio.com',
    storageBucket: 'xpensertracker.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD89Yu52LKFUPVF4W9S2vUwjrdycvohO1g',
    appId: '1:712566736025:ios:2458a171d43947c1e02408',
    messagingSenderId: '712566736025',
    projectId: 'xpensertracker',
    databaseURL: 'https://xpensertracker-default-rtdb.firebaseio.com',
    storageBucket: 'xpensertracker.appspot.com',
    iosClientId: '712566736025-r8g2svjpkelrfgldk9j874vsqaohcp72.apps.googleusercontent.com',
    iosBundleId: 'com.example.xpenseTracker',
  );
}
