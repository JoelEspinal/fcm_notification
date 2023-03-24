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
    apiKey: 'AIzaSyAl5z3HrITKpgfrycAIbkKIvtR4JJWe_Uk',
    appId: '1:205244657252:web:ac1294c35986f2f007b971',
    messagingSenderId: '205244657252',
    projectId: 'flutter-notifications-3c31e',
    authDomain: 'flutter-notifications-3c31e.firebaseapp.com',
    storageBucket: 'flutter-notifications-3c31e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfaoE7uGuExRrlkhPlx4A0-f9KPltBy7M',
    appId: '1:205244657252:android:23ed3c0cda1d5a6107b971',
    messagingSenderId: '205244657252',
    projectId: 'flutter-notifications-3c31e',
    storageBucket: 'flutter-notifications-3c31e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDUiAfoq185MR0HzrdnyJ22kbe4xfRGt1Q',
    appId: '1:205244657252:ios:6787b2729024e34207b971',
    messagingSenderId: '205244657252',
    projectId: 'flutter-notifications-3c31e',
    storageBucket: 'flutter-notifications-3c31e.appspot.com',
    iosClientId: '205244657252-t5nrpmd46gi170bhhtcnhgjcqq7udh99.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterNotifications',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDUiAfoq185MR0HzrdnyJ22kbe4xfRGt1Q',
    appId: '1:205244657252:ios:6787b2729024e34207b971',
    messagingSenderId: '205244657252',
    projectId: 'flutter-notifications-3c31e',
    storageBucket: 'flutter-notifications-3c31e.appspot.com',
    iosClientId: '205244657252-t5nrpmd46gi170bhhtcnhgjcqq7udh99.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterNotifications',
  );
}