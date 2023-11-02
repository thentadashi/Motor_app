
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(50)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(50),
        vertical: getProportionateScreenWidth(40)
      ),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFF01579B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "Holliday Surprise\n",
          style: TextStyle(
            color: Colors.white
          ),
          children: [
            TextSpan(
              text: "Downpayment 20% off",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



