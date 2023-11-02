import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/models/product.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, 
    this.width = 320, 
    this.aspectRatio = 1.02, 
    required this.product,
    required this.press,
  });

  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(50)),
      child: GestureDetector(
        onTap:press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(40)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("₱${product.price}",style: TextStyle(
                    fontSize: getProportionateScreenWidth(35),
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    fontFamily: 'Roboto',
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(45),
                      height: getProportionateScreenWidth(45),
                      decoration: BoxDecoration(
                        color: product.isFavourate 
                          ? kPrimaryColor.withOpacity(0.15) 
                          : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                    child: 
                        SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          color: product.isFavourate
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEF4),
                         ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
