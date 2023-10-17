import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none, 
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          Positioned(
            right: -5,
            bottom: 0,
            child: SizedBox(
              height: 42,
              width: 42, 
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFF5F6F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.zero,
                  side: BorderSide(
                    color: Colors.white
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg")
              ),
            ),
          ),
        ],
      ),
    );
  }
}