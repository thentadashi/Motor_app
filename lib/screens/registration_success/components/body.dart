import "package:flutter/material.dart";
import "package:pharma_shop/components/default_button.dart";
import "package:pharma_shop/screens/sign_in/sign_in_screen.dart";
import "package:pharma_shop/size_config.dart";

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(1)),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHeight *0.4,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Text(
              "Registration Success",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(60),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: defaultButton(
                text: "Back to Login",
                press : () => Navigator.pushNamed(context, SignInScreen.routeName), 
                key: UniqueKey(),
              ),
            ),
            Spacer(),
          ],
          
        ),
      ),
    );
  }
}