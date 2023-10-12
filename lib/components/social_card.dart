import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_shop/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key, 
    required this.icon, 
    required this.press,

  });

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
          ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}



