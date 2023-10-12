import 'package:flutter/material.dart';
import 'package:pharma_shop/components/product_card.dart';
import 'package:pharma_shop/models/product.dart';
import 'package:pharma_shop/screens/details/details_screen.dart';
import 'package:pharma_shop/screens/home/components/section_title.dart';
import 'package:pharma_shop/size_config.dart';

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
