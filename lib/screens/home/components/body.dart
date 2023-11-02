// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/screens/home/components/categories.dart';
import 'package:Motorcycle_shop_app/screens/home/components/discount_banner.dart';
import 'package:Motorcycle_shop_app/screens/home/components/home_header.dart';
import 'package:Motorcycle_shop_app/screens/home/components/popular_products.dart';
import 'package:Motorcycle_shop_app/screens/home/components/special_offers.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(30),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(45),),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(45),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(45),),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(45),),
            PoppularProduct(),
            SizedBox(height: getProportionateScreenWidth(45),),
          ],
        ),
      ),
    );
  }
}



