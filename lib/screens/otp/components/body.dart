// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/screens/otp/components/otp_form.dart';
import 'package:pharma_shop/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              Text("OTP Verification", style: headingStyle,),
              Text("We sent your code to Example@email.com"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15,),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              GestureDetector(
                onTap: () {
                  // resend your otp code
                },
                child: Text(
                  "Resend OTP code", 
                style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in"),
        TweenAnimationBuilder(
          tween: Tween(
            begin:30.0, end: 0), 
            duration: Duration(seconds:30), // allow user 30s
            builder: (context, value, child) => Text(
              "00:${value.toInt()}", 
              style: TextStyle(color: kPrimaryColor,)
              ),
          ),
        ],
    );
  }
}

