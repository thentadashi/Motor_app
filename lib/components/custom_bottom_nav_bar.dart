import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/enums.dart';
import 'package:Motorcycle_shop_app/screens/home/home_screen.dart';
import 'package:Motorcycle_shop_app/screens/profile/profile_screen.dart';

class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar({
    super.key,
    required this.boxShadowOffset,
    required this.selectedMenu,
  });

  final Menustate selectedMenu;
  final Offset boxShadowOffset;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: boxShadowOffset,
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: Menustate.home == selectedMenu 
                ? kPrimaryColor
                : inActiveIconColor,
                ), 
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: Menustate.favorite == selectedMenu 
                ? kPrimaryColor
                : inActiveIconColor,
                ), 
              onPressed: null
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: Menustate.message == selectedMenu 
                ? kPrimaryColor
                : inActiveIconColor,
                ), 
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: Menustate.profile == selectedMenu 
                ? kPrimaryColor
                : inActiveIconColor,
                ), 
              onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}