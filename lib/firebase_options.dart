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
    apiKey: 'AIzaSyD6GkRkQWgX6qMdSev4nkW-zYaj8Jr97lU',
    appId: '1:4284738823:web:ddeb25b053fe253d50e9a2',
    messagingSenderId: '4284738823',
    projectId: 'autoberes-61646',
    authDomain: 'autoberes-61646.firebaseapp.com',
    storageBucket: 'autoberes-61646.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAIssm-3oNphafThfr110aVWhNizqxwYY4',
    appId: '1:4284738823:android:ffd019407cca405950e9a2',
    messagingSenderId: '4284738823',
    projectId: 'autoberes-61646',
    storageBucket: 'autoberes-61646.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHXp7fpR8S9wsHDz1jK8cIahJkGJkS21U',
    appId: '1:4284738823:ios:21a245a00d075e1f50e9a2',
    messagingSenderId: '4284738823',
    projectId: 'autoberes-61646',
    storageBucket: 'autoberes-61646.appspot.com',
    iosClientId: '4284738823-it6e3dgphcen3juukhlnol35ppr31q3o.apps.googleusercontent.com',
    iosBundleId: 'com.otomotifapp.otApps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDHXp7fpR8S9wsHDz1jK8cIahJkGJkS21U',
    appId: '1:4284738823:ios:21a245a00d075e1f50e9a2',
    messagingSenderId: '4284738823',
    projectId: 'autoberes-61646',
    storageBucket: 'autoberes-61646.appspot.com',
    iosClientId: '4284738823-it6e3dgphcen3juukhlnol35ppr31q3o.apps.googleusercontent.com',
    iosBundleId: 'com.otomotifapp.otApps',
  );
}
