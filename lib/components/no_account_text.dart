import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:Motorcycle_shop_app/size_config.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(30)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign up",
            style: TextStyle(fontSize: getProportionateScreenWidth(30),
            color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}