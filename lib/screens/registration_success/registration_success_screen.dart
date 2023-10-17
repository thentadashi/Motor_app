import "package:flutter/material.dart";
import "package:pharma_shop/screens/registration_success/components/body.dart";


class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/registration_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Registration Success"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}