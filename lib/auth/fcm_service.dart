// import 'package:firebase_messaging/firebase_messaging.dart';

// final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

// void configureFirebaseMessaging() {
//   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//     print("onMessage: $message");
//     // Handle foreground messages
//   });

//   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//     print("onLaunch: $message");
//     // Handle notification when app is terminated
//   });

//   FirebaseMessaging.onBackgroundMessage((RemoteMessage message) {
//     print("onResume: $message");
//     // Handle notification when app is in the background but not terminated
//     return Future<void>.value();
//   });
// }