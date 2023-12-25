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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBttL8gjOuiasd8qjxgRZymz-dvTDgu0_U',
    appId: '1:338821569675:web:49ef89ac0c882a149f488e',
    messagingSenderId: '338821569675',
    projectId: 'save-memories-855b7',
    authDomain: 'save-memories-855b7.firebaseapp.com',
    storageBucket: 'save-memories-855b7.appspot.com',
    measurementId: 'G-WMKH1710S1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD77f1kAeA8icYc38N1EZ3cBjdQPvJvNwI',
    appId: '1:338821569675:android:db9114fae649e46b9f488e',
    messagingSenderId: '338821569675',
    projectId: 'save-memories-855b7',
    storageBucket: 'save-memories-855b7.appspot.com',
  );
}