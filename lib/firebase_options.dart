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
    apiKey: 'AIzaSyAAGPAl8fBpv8qPHE6SFw0T0FZtO5txDfg',
    appId: '1:1028535103761:web:cf0e86a5e57654d06e9cb0',
    messagingSenderId: '1028535103761',
    projectId: 'recruiter-9f6a2',
    authDomain: 'recruiter-9f6a2.firebaseapp.com',
    storageBucket: 'recruiter-9f6a2.appspot.com',
    measurementId: 'G-K49MVDHVWJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEXbOiRySx_LN9-E_H79coSxqRtrYRshE',
    appId: '1:1028535103761:android:d14eab5b5553f4b16e9cb0',
    messagingSenderId: '1028535103761',
    projectId: 'recruiter-9f6a2',
    storageBucket: 'recruiter-9f6a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGvKf09xwZxKzJxeZ33X5WNgr-RUSYJys',
    appId: '1:1028535103761:ios:12f980c22c7f10c16e9cb0',
    messagingSenderId: '1028535103761',
    projectId: 'recruiter-9f6a2',
    storageBucket: 'recruiter-9f6a2.appspot.com',
    iosClientId: '1028535103761-ocb6oah448hs6q60eiqe8m67k9st3qiq.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApp',
  );
}
