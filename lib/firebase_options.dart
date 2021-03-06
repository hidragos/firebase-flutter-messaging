// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTmHWgURlvf8WjmGfnsPtvMLebpq77ZXI',
    appId: '1:64246175173:android:fa0e0d66a4974554e367ac',
    messagingSenderId: '64246175173',
    projectId: 'radar-84522',
    databaseURL: 'https://radar-84522-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'radar-84522.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZ-XCQB3ac1MgO_pwMVMuj-mc-jS0hwcs',
    appId: '1:64246175173:ios:fc358368398f987ee367ac',
    messagingSenderId: '64246175173',
    projectId: 'radar-84522',
    databaseURL: 'https://radar-84522-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'radar-84522.appspot.com',
    iosClientId: '64246175173-lqhqkb9d0pvt4g7crnf3pio37d8r9h1v.apps.googleusercontent.com',
    iosBundleId: 'com.dragos.firebase.flutter.messaging',
  );
}
