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
    apiKey: 'AIzaSyDWia_pkHS6zhNJPdrjSzzdl3zCr_Q1Kz8',
    appId: '1:683153917705:web:289e01c4945cd20beb75d8',
    messagingSenderId: '683153917705',
    projectId: 'project-sec-ca072',
    authDomain: 'project-sec-ca072.firebaseapp.com',
    storageBucket: 'project-sec-ca072.appspot.com',
    measurementId: 'G-1XWV99GVQT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXTmSX0JEBBBznZ8MqRM42hy7DAiZZ2G0',
    appId: '1:683153917705:android:757c674760a2857aeb75d8',
    messagingSenderId: '683153917705',
    projectId: 'project-sec-ca072',
    storageBucket: 'project-sec-ca072.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPVzZSu3vt-C-gPtUbWQg8tOn5xHJ4s1Q',
    appId: '1:683153917705:ios:d1f8a5a193528f94eb75d8',
    messagingSenderId: '683153917705',
    projectId: 'project-sec-ca072',
    storageBucket: 'project-sec-ca072.appspot.com',
    iosBundleId: 'com.example.projectSec',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPVzZSu3vt-C-gPtUbWQg8tOn5xHJ4s1Q',
    appId: '1:683153917705:ios:dd587fdd558c5663eb75d8',
    messagingSenderId: '683153917705',
    projectId: 'project-sec-ca072',
    storageBucket: 'project-sec-ca072.appspot.com',
    iosBundleId: 'com.example.projectSec.RunnerTests',
  );
}
