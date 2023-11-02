import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, 
    required this.text, 
    required this.press,

  });

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(40),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              "See more",
              style: TextStyle(color: kPrimaryColor,),
              ),
            ),
        ],
      ),
    );
  }
}

