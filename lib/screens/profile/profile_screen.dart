// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/auth/session_manager.dart';
import 'package:Motorcycle_shop_app/components/custom_bottom_nav_bar.dart';
import 'package:Motorcycle_shop_app/enums.dart';
import 'package:Motorcycle_shop_app/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  static String routeName = "/profile";
  final SessionManager sessionManager = SessionManager();
  
  @override
  Widget build(BuildContext context) {
    final boxShadowOffset = Offset(0, -15);

    return  Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Body(sessionManager: sessionManager),
      bottomNavigationBar: CustomButtomNavBar(selectedMenu: Menustate.profile, boxShadowOffset: boxShadowOffset,),
    );
  }
}

