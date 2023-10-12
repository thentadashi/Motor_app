import 'package:flutter/material.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/size_config.dart';


class defaultButton extends StatelessWidget {
  const defaultButton({
    required Key key, 
    required this.text, 
    required this.press,

  }) : super(key : key);
  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(35),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}