import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/screens/cart/cart_screen.dart';
import 'package:Motorcycle_shop_app/screens/home/components/icon_button_with_counter.dart';
import 'package:Motorcycle_shop_app/screens/home/components/search_field.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
            SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 0,
            press: () => Navigator.pushNamed(context, CartScreen.routName), 
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
