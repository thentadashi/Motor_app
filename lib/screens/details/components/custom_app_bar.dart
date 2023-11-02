import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Motorcycle_shop_app/components/rounded_icon_button.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double rating;

  const CustomAppBar({
    super.key, 
    required this.rating,
    });
    
  @override
  
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            RoundedIconButton(
              iconData: Icons.arrow_back_ios,
              iconColor: Colors.black,
              press: () => Navigator.pop(context), 
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5,),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } 
}