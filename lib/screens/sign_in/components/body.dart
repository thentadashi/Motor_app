// ignore_for_file: prefer_typing_uninitialized_variables, unused_field


import 'package:flutter/material.dart';
import 'package:pharma_shop/components/no_account_text.dart';
import 'package:pharma_shop/components/social_card.dart';
import 'package:pharma_shop/screens/sign_in/components/sign_form.dart';
import 'package:pharma_shop/size_config.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(50),
            ),
          child: SingleChildScrollView(
            child: Column(
              children:[
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(55),
                  fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                    "Sign in with your email and password \nor continue with your social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  SignForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCard(
                        icon: "assets/icons/google-icon.svg",
                        press: () {},
                    ),
                      SocialCard(
                        icon: "assets/icons/facebook-2.svg",
                        press: () {},
                    ),
                      SocialCard(
                        icon: "assets/icons/twitter.svg",
                        press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(18)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



