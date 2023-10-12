import "package:flutter/material.dart";
import "package:pharma_shop/screens/sign_up/components/body.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        centerTitle: true,
        ),
        body: Body(),
    );
  }
}