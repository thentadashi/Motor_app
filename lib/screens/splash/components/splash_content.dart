// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    required Key key,
    required this.image, 
    required this.text,
  }) : super(key: key);
  final String text, image;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex: 3),
        Text(
          "Motorcycle shop app",
          style: TextStyle(fontSize: getProportionateScreenWidth(70),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 1),
        Image.asset(
          image,
          height: getProportionateScreenHeight(300),
          width: getProportionateScreenWidth(285),
        ),
      ],
    );
  }
}
