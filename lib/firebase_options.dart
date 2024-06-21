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
        return windows;
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
    apiKey: 'AIzaSyDB8a1GTK4J6PDkKrhCBFhynyv4j4bKSE0',
    appId: '1:466833815906:web:45b5bafdb8c1399c4fd43b',
    messagingSenderId: '466833815906',
    projectId: 'food-delivery-24b8c',
    authDomain: 'food-delivery-24b8c.firebaseapp.com',
    storageBucket: 'food-delivery-24b8c.appspot.com',
    measurementId: 'G-FX7BSQT9ZP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsAqRf6A4L2y2bNnbzqQ41wDYPBvdmTbk',
    appId: '1:466833815906:android:406cf9a96967b2484fd43b',
    messagingSenderId: '466833815906',
    projectId: 'food-delivery-24b8c',
    storageBucket: 'food-delivery-24b8c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAg3VzrMhSgWtul2RpvIspE4p_ncPYNc6g',
    appId: '1:466833815906:ios:3748f26cafc8fde84fd43b',
    messagingSenderId: '466833815906',
    projectId: 'food-delivery-24b8c',
    storageBucket: 'food-delivery-24b8c.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAg3VzrMhSgWtul2RpvIspE4p_ncPYNc6g',
    appId: '1:466833815906:ios:3748f26cafc8fde84fd43b',
    messagingSenderId: '466833815906',
    projectId: 'food-delivery-24b8c',
    storageBucket: 'food-delivery-24b8c.appspot.com',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDB8a1GTK4J6PDkKrhCBFhynyv4j4bKSE0',
    appId: '1:466833815906:web:ad5553900bcefa8d4fd43b',
    messagingSenderId: '466833815906',
    projectId: 'food-delivery-24b8c',
    authDomain: 'food-delivery-24b8c.firebaseapp.com',
    storageBucket: 'food-delivery-24b8c.appspot.com',
    measurementId: 'G-N93B09B0F7',
  );
}
