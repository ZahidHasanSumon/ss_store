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
    apiKey: 'AIzaSyB4Jo_dC54vE-IfxG6mUrr-FbVSW5FjMnw',
    appId: '1:557200424508:web:d2b788457f0f1e0d998d39',
    messagingSenderId: '557200424508',
    projectId: 'ecommerceapp-f2c07',
    authDomain: 'ecommerceapp-f2c07.firebaseapp.com',
    storageBucket: 'ecommerceapp-f2c07.appspot.com',
    measurementId: 'G-2KJCSRBEE5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCy1rm0jnpmGnYZiXbICe_KvVUuofh3xMs',
    appId: '1:557200424508:android:5693c1082425bd87998d39',
    messagingSenderId: '557200424508',
    projectId: 'ecommerceapp-f2c07',
    storageBucket: 'ecommerceapp-f2c07.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdNFZUGiBheAEe3FjZSju1Mya7OQKjT3M',
    appId: '1:557200424508:ios:48bbc56f91e1378d998d39',
    messagingSenderId: '557200424508',
    projectId: 'ecommerceapp-f2c07',
    storageBucket: 'ecommerceapp-f2c07.appspot.com',
    androidClientId: '557200424508-0udaukadjtbuf4pe098u99cjean7neep.apps.googleusercontent.com',
    iosClientId: '557200424508-te3hpeh72ovbo4hd6qp7s4hl815ft0dc.apps.googleusercontent.com',
    iosBundleId: 'com.example.ssStore',
  );
}