import 'package:flutter/material.dart';
import 'package:pharma_shop/components/rounded_icon_button.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/models/product.dart';
import 'package:pharma_shop/size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int  isSelectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(50)
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length, 
            (index) => ColorDot(
              color: Color(int.parse(product.colors[index].replaceAll('0x', '0xFF'))), 
              isSelected: isSelectedColor == index,)
          ),
          Spacer(),
          RoundedIconButton(
            iconData: Icons.remove,
            press: () {}, 
            iconColor: Colors.black,
          ),
          SizedBox(width: getProportionateScreenWidth(30),),
          RoundedIconButton(
            iconData: Icons.add,
            press: () {}, 
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, 
    required this.color, 
    this.isSelected = false,

  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(90),
      width: getProportionateScreenWidth(90),
      decoration: BoxDecoration(
        // color: Color(int.parse(product.colors[0].replaceAll('#', '0xFF'))),
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    ),
    );
  }
}