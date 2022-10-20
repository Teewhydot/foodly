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
    apiKey: 'AIzaSyDnvJm6DEShsgqCXcUtw9vZ6jWILsSZ5h8',
    appId: '1:416076545506:web:beb55cd2d3be677ec84dbb',
    messagingSenderId: '416076545506',
    projectId: 'foodly-ab296',
    authDomain: 'foodly-ab296.firebaseapp.com',
    storageBucket: 'foodly-ab296.appspot.com',
    measurementId: 'G-4CW2484CX8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAE8eRc5BsSmirage_ro2cBiaIS3xnB1fI',
    appId: '1:416076545506:android:9d365ad4d3f49e4dc84dbb',
    messagingSenderId: '416076545506',
    projectId: 'foodly-ab296',
    storageBucket: 'foodly-ab296.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVJ4S7OGgeaeFlN3Bm-e9HnMDa9wlOkRc',
    appId: '1:416076545506:ios:6620eab3ec84dbc6c84dbb',
    messagingSenderId: '416076545506',
    projectId: 'foodly-ab296',
    storageBucket: 'foodly-ab296.appspot.com',
    iosClientId:
        '416076545506-n9201pol1tkq01sd5cd93pnlmesg88ql.apps.googleusercontent.com',
    iosBundleId: 'com.teeofgui.foodly.foodly',
  );
}
