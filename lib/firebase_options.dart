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
    apiKey: 'AIzaSyBqLXabxCILObQ0DWbPcPUJ5yQer3rxELA',
    appId: '1:342242041552:web:2f92332ba6e0c0804d48d5',
    messagingSenderId: '342242041552',
    projectId: 'notificationapp-91f54',
    authDomain: 'notificationapp-91f54.firebaseapp.com',
    storageBucket: 'notificationapp-91f54.appspot.com',
    measurementId: 'G-61F5M53CF9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQPyIkQQqHA9FCTeW1qYKJ1ABXAjR_EdI',
    appId: '1:342242041552:android:acd68a915c98ac4a4d48d5',
    messagingSenderId: '342242041552',
    projectId: 'notificationapp-91f54',
    storageBucket: 'notificationapp-91f54.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcUGYP_opeW8EuEshfkkQpfjxyMTZIz8A',
    appId: '1:342242041552:ios:1fe1f4daae52d5674d48d5',
    messagingSenderId: '342242041552',
    projectId: 'notificationapp-91f54',
    storageBucket: 'notificationapp-91f54.appspot.com',
    iosBundleId: 'com.example.notiapp',
  );
}
