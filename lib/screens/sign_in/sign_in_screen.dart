import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:pharma_shop/screens/home/home_screen.dart';
import 'package:pharma_shop/auth/session_manager.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  final SessionManager sessionManager = SessionManager();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await sessionManager.isLoggedIn()) {
          // If the user is logged in, navigate to the HomeScreen
          Navigator.pushNamed(context, HomeScreen.routeName);
          return true;
        } else {
          // If the user is not logged in, allow the back action
          return false;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign In"),
          centerTitle: true,
        ),
        body: Body(),
      ),
    );
  }
}
