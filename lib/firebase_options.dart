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
    apiKey: 'AIzaSyCFoi4J0th5YaF15KNQ7sUI7cyMp9A6bH4',
    appId: '1:879502703916:web:4cc07b5d4bca7fbd678089',
    messagingSenderId: '879502703916',
    projectId: 'accountsntax-fea20',
    authDomain: 'accountsntax-fea20.firebaseapp.com',
    storageBucket: 'accountsntax-fea20.appspot.com',
    measurementId: 'G-LDLVCJ7GBG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSXVH1UzKunI-B2ldsC0fQ5mQHqkSiNJI',
    appId: '1:879502703916:android:57ed661f5bc6547e678089',
    messagingSenderId: '879502703916',
    projectId: 'accountsntax-fea20',
    storageBucket: 'accountsntax-fea20.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5AsIj6R6UMIvwbpO2klDdBQhreJSihAg',
    appId: '1:879502703916:ios:425b56c477e783f3678089',
    messagingSenderId: '879502703916',
    projectId: 'accountsntax-fea20',
    storageBucket: 'accountsntax-fea20.appspot.com',
    iosClientId: '879502703916-18kc9v16dhglqd8fba5bnn2p4b43t9kj.apps.googleusercontent.com',
    iosBundleId: 'com.example.accountsntax',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5AsIj6R6UMIvwbpO2klDdBQhreJSihAg',
    appId: '1:879502703916:ios:2e8f9f0101e75476678089',
    messagingSenderId: '879502703916',
    projectId: 'accountsntax-fea20',
    storageBucket: 'accountsntax-fea20.appspot.com',
    iosClientId: '879502703916-6kudpi7aje56tnuukoiomi62vnrj8vru.apps.googleusercontent.com',
    iosBundleId: 'com.example.accountsntax.RunnerTests',
  );
}