import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/models/product.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.product,
    required this.pressOnSeeMore,
  });

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
          child: Text(product.title,
          style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 5,),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(44)),
            decoration: BoxDecoration(
              color: product.isFavourate
              ? Color(0xFFFFE6E6)
              : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product.isFavourate 
                ? Color(0xFFFF4848) 
                : Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(50), 
            right: getProportionateScreenWidth(140)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(50), 
            vertical: getProportionateScreenWidth(10)
          ),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: [
                Text("See More Detais", style: 
                  TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_forward_ios,
                  size: 12, color: kPrimaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}