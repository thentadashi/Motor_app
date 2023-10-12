import 'package:flutter/material.dart';
import 'package:pharma_shop/auth/session_manager.dart';
import 'package:pharma_shop/components/custom_bottom_nav_bar.dart';
import 'package:pharma_shop/enums.dart';
import 'package:pharma_shop/screens/home/components/body.dart';
import 'package:pharma_shop/screens/sign_in/sign_in_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static String routeName = "/home";
  final SessionManager sessionManager = SessionManager();

  @override
  Widget build(BuildContext context) {
    final boxShadowOffset = Offset(0, -15);

    _checkLoginStatus(context);

    return WillPopScope(
      onWillPop: () async {
        // Check the user's login status
        if (await sessionManager.isLoggedIn()) {
          // If the user is logged in, allow the back action
          return true;
        } else {
          // If the user is not logged in, block the back action
          // You can optionally navigate to the login screen here
          Navigator.pushNamed(context, SignInScreen.routeName);
          return false;
        }
      },
      child: Scaffold(
        body: Body(),
        bottomNavigationBar: CustomButtomNavBar(
          selectedMenu: Menustate.home,
          boxShadowOffset: boxShadowOffset,
        ),
      ),
    );
  }

  Future<void> _checkLoginStatus(BuildContext context) async {
    if (!(await sessionManager.isLoggedIn())) {
      // User is not logged in, navigate to the login screen
      Navigator.pushNamed(context, SignInScreen.routeName);
    }
  }
}
