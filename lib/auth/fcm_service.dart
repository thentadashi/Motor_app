// fcm_service.dart

import 'package:firebase_messaging/firebase_messaging.dart';

final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

void configureFirebaseMessaging() {
  _firebaseMessaging.configure(
    onMessage: (Map<String, dynamic> message) {
      print("onMessage: $message");
      // Handle foreground messages
    },
    onLaunch: (Map<String, dynamic> message) {
      print("onLaunch: $message");
      // Handle notification when the app is terminated
    },
    onResume: (Map<String, dynamic> message) {
      print("onResume: $message");
      // Handle notification when the app is in the background but not terminated
    },
  );
}
