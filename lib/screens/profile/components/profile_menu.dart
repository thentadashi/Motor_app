
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_shop/constant.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, 
    required this.text, 
    required this.icon, 
    required this.press,
  });

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        onPressed: press, 
        style: TextButton.styleFrom(
         backgroundColor: Color(0xFFF5F6F9),
         padding: EdgeInsets.all(20),
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
            ),
        ),
        child:Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 24,
                ),
            ),
          ],
        ),
      ),
    );
  }
}

