// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharma_shop/auth/session_manager.dart';
import 'package:pharma_shop/screens/profile/components/profile_menu.dart';
import 'package:pharma_shop/screens/profile/components/profile_pic.dart';
import 'package:pharma_shop/screens/sign_in/sign_in_screen.dart';


class Body extends StatelessWidget {
  const Body({super.key, required this.sessionManager});
  final SessionManager sessionManager;
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20,),
        ProfileMenu(
          text: "My Account", 
          icon: "assets/icons/User Icon.svg", 
          press: () {  },
        ),
        ProfileMenu(
          text: "Notifications", 
          icon: "assets/icons/Bell.svg", 
          press: () {  },
        ),
        ProfileMenu(
          text: "Settings", 
          icon: "assets/icons/Settings.svg", 
          press: () {  },
        ),
        ProfileMenu(
          text: "Help Center", 
          icon: "assets/icons/Question mark.svg", 
          press: () {  },
        ),
        ProfileMenu(
        text: "Log Out", 
        icon: "assets/icons/Log out.svg", 
        press: () {
          Navigator.pushReplacementNamed(context, SignInScreen.routeName);
          sessionManager.clearSession();
        },
      ),
      ],
    );
  }
}
