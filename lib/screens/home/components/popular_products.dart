import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/components/product_card.dart';
import 'package:Motorcycle_shop_app/models/product.dart';
import 'package:Motorcycle_shop_app/screens/details/details_screen.dart';
import 'package:Motorcycle_shop_app/screens/home/components/section_title.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class PoppularProduct extends StatelessWidget {
  const PoppularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product", 
          press: () {}
        ),
        SizedBox(height: getProportionateScreenWidth(20),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length, 
                  (index) => ProductCard(
                    product: demoProducts[index], 
                    press: () => 
                  Navigator.pushNamed(
                    context, 
                    DetailsScreen.routerName, 
                    arguments: ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(50),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
