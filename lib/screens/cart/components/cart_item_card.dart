import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/models/cart.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(180),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(50),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10,),
            Text.rich(
              TextSpan(
                text: "\₱${cart.product.price}",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: 'Roboto',
                ),
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)), // Adjust padding as needed
                      child: Text.rich(
                        TextSpan(
                          text: "x${cart.numOfItems}",
                          style: TextStyle(
                            color: kTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}