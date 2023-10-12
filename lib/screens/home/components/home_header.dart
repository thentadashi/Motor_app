import 'package:flutter/material.dart';
import 'package:pharma_shop/screens/cart/cart_screen.dart';
import 'package:pharma_shop/screens/home/components/icon_button_with_counter.dart';
import 'package:pharma_shop/screens/home/components/search_field.dart';
import 'package:pharma_shop/size_config.dart';

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
