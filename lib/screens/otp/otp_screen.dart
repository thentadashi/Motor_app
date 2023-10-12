import "package:flutter/material.dart";
import "package:pharma_shop/screens/otp/components/body.dart";

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static String routeName =  "/otp";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Otp Verification",
          ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}