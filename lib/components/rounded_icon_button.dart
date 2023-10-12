import 'package:flutter/material.dart';
import 'package:pharma_shop/size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key, 
    required this.iconData, 
    required this.press, 
    required this.iconColor,
  });
    final IconData iconData;
    final GestureTapCallback press;
    final Color iconColor; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(80),
      width: getProportionateScreenWidth(80),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(getProportionateScreenWidth(20))),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
            ), 
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: press,
        child: Icon(
          iconData,
          color: iconColor
        ),
      ),
    );
  }
}
