// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/components/default_button.dart';
import 'package:Motorcycle_shop_app/models/product.dart';
import 'package:Motorcycle_shop_app/screens/details/components/color_dots.dart';
import 'package:Motorcycle_shop_app/screens/details/components/product_description.dart';
import 'package:Motorcycle_shop_app/screens/details/components/product_images.dart';
import 'package:Motorcycle_shop_app/screens/details/components/top_rounded_container.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class Body extends StatelessWidget {
 final Product product;

  const Body({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: 
              Column(
                children:[
                  ProductDescription(
                    product: product,
                    pressOnSeeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left:SizeConfig.screenWidth * 0.15,
                              right:SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenHeight(30),
                              bottom: getProportionateScreenHeight(40),
                            ),
                            child: defaultButton(
                              text: 'Add to cart', 
                              press: () {  },
                              key: UniqueKey(), 
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
    );
    }
  }






