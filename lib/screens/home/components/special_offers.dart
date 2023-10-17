import 'package:flutter/material.dart';
import 'package:pharma_shop/screens/home/components/section_title.dart';
import 'package:pharma_shop/size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
            text:"Special for you",
            press: () {},
          ),
        SizedBox(height: getProportionateScreenWidth(30),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/image_banner3.png",
                category: "Vitamins",
                numOfBrands: 30,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/image_banner4.png",
                category: "Antibiotics",
                numOfBrands: 24,
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key, 
    required this.category, 
    required this.image, 
    required this.numOfBrands, 
    required this.press,
  });

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(190),
      width: getProportionateScreenWidth(510),
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(50)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
              children:[ Image.asset(image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40),
                  vertical: getProportionateScreenWidth(35)),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(34),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "$numOfBrands Brands"
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

