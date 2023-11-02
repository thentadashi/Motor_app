import "package:flutter/material.dart";
import "package:Motorcycle_shop_app/components/default_button.dart";
import "package:Motorcycle_shop_app/screens/home/home_screen.dart";
import "package:Motorcycle_shop_app/size_config.dart";

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
              "assets/images/key.jpg",
              height: SizeConfig.screenHeight *0.4,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Text(
              "Login Success",
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
                text: "Back to home",
                press : () => Navigator.pushNamed(context, HomeScreen.routeName), 
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