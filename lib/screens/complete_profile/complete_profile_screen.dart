import 'package:flutter/material.dart';
import 'package:pharma_shop/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key, required this.userId}) : super(key: key);
  static String routeName = "/complete_profile";

  final String userId;
  
  @override
  Widget build(BuildContext context) {
    final String userId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        centerTitle: true,
      ),
      body: Body(userId:userId),
    );
  }
}