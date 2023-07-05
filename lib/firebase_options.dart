// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
// / ```

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
    apiKey: 'AIzaSyCiAHcpgQFhvfOv4PlbGn1lhRyPdbtYNFo',
    appId: '1:328579884552:web:6eddced312ca7f80c793bd',
    messagingSenderId: '328579884552',
    projectId: 'app-movies-eb602',
    authDomain: 'app-movies-eb602.firebaseapp.com',
    storageBucket: 'app-movies-eb602.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3-tZSHPAnB-hE8dWLpXdkp8B2Hos8kdw',
    appId: '1:328579884552:android:88aeaa50f1a24c38c793bd',
    messagingSenderId: '328579884552',
    projectId: 'app-movies-eb602',
    storageBucket: 'app-movies-eb602.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBg5blfR2nfyX4OK8XstrfhW6uCc7o4p2A',
    appId: '1:328579884552:ios:1da622d6fa4701b3c793bd',
    messagingSenderId: '328579884552',
    projectId: 'app-movies-eb602',
    storageBucket: 'app-movies-eb602.appspot.com',
    iosClientId:
        '328579884552-o6803uk44rdbet20672fg8b6e1fk3ban.apps.googleusercontent.com',
    iosBundleId: 'com.example.appMovie',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBg5blfR2nfyX4OK8XstrfhW6uCc7o4p2A',
    appId: '1:328579884552:ios:9d8f67792123c9a7c793bd',
    messagingSenderId: '328579884552',
    projectId: 'app-movies-eb602',
    storageBucket: 'app-movies-eb602.appspot.com',
    iosClientId:
        '328579884552-1f81dm8rckq2219b9569i6d1rgmm4q2v.apps.googleusercontent.com',
    iosBundleId: 'com.example.appMovie.RunnerTests',
  );
}