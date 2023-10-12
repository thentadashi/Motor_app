import "package:flutter/material.dart";
import "package:pharma_shop/components/social_card.dart";
import "package:pharma_shop/constant.dart";
import "package:pharma_shop/screens/sign_up/components/sign_up_form.dart";
import "package:pharma_shop/size_config.dart";

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(55)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),// 2% of total height
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \n with social media",
                textAlign: TextAlign.center,
                ),
              SizedBox(height: SizeConfig.screenHeight * 0.07), // 8% total height
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
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
              SizedBox(height: getProportionateScreenHeight(20),),
              Text(
                "By Continuing you confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

