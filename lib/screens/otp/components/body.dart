// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/screens/otp/components/otp_form.dart';
import 'package:pharma_shop/size_config.dart';

class Body extends StatelessWidget {
  final String userId;
  final String email;
  final String code;
  const Body({
    super.key, 
    required this.userId, 
    required this.email, 
    required this.code
  });

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
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "We sent your verification code",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Via email to ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: email,
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              buildTimer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(
                      text: "Temporary Code",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: code,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
    int initialSeconds = 300; // 5 minutes in seconds

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expire in"),
        TweenAnimationBuilder(
          tween: Tween(
            begin: initialSeconds.toDouble(),
            end: 0,
          ),
          duration: Duration(seconds: initialSeconds),
          builder: (context, value, child) {
            final int minutes = (value / 60).floor();
            final int seconds = (value % 60).floor();

            return Text(
              "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}",
              style: TextStyle(color: kPrimaryColor),
            );
          },
        ),
      ],
    );
  }

}

