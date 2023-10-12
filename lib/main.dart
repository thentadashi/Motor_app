// ignore_for_file: prefer_const_constructors, unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pharma_shop/routes.dart';
import 'package:pharma_shop/screens/profile/profile_screen.dart';
import 'package:pharma_shop/theme.dart';
import 'constant.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pharma_shop/auth/fcm_service.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharma app',
      theme: theme(),
      // home: SplashScreen(),
      // initialRoute: ProfileScreen.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

