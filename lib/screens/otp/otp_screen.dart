import "package:flutter/material.dart";
import "package:pharma_shop/screens/otp/components/body.dart";

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key, required this.userId, required this.email, required this.code}) : super(key: key);
  static String routeName =  "/otp";

  final String userId;
  final String email;
  final String code;

  @override
  Widget build(BuildContext context) {
    final Map<String, String> arguments = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String userId = arguments["userId"] ?? "";
    final String email = arguments["email"] ?? "";
    final String code = arguments["code"] ?? "";
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Otp Verification",
          ),
        centerTitle: true,
      ),
      body: Body(userId:userId, email: email, code:code,),
    );
  }
}