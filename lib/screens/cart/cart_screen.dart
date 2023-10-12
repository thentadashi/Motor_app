

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharma_shop/components/default_button.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/models/cart.dart';
import 'package:pharma_shop/screens/cart/components/body.dart';
import 'package:pharma_shop/size_config.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }

  AppBar BuildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(
              color: Colors.black
            ),
          ),
          Text(
            "${demoCarts.length} Items",
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
      centerTitle: true,
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15), 
        vertical: getProportionateScreenWidth(30)
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow:[ BoxShadow(
            offset: Offset(0,-15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: getProportionateScreenWidth(90),
                    width: getProportionateScreenWidth(90),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset("assets/icons/receipt.svg"),
                  ),
                  Spacer(),
                  Text(
                    "Add vouncer code",
                    style: TextStyle(color: kTextColor)
                  ),
                  const SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor,),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 
                        "Total:\n",
                        style: TextStyle(color: kTextColor),
                      children: [
                        TextSpan(
                          text: 
                          "\₱337.78",
                          style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Roboto')
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(390),
                  child: defaultButton(
                    key: UniqueKey(), 
                    text: "Check Out", 
                    press: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}