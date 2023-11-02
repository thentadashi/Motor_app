import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/models/product.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(538),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) => BuildSmallPreview(index))
          ],
        ),
      ],
    );
  }

  GestureDetector BuildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
              margin:  EdgeInsets.all(getProportionateScreenWidth(15)),
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              height: getProportionateScreenWidth(98),
              width: getProportionateScreenWidth(98),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: selectedImage == index ? kPrimaryColor : Colors.transparent
                ),
              ),
              child: Image.asset(widget.product.images[index]),
            ),
    );
  }
}