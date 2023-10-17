import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/size_config.dart';

class CustomSnackbarContent extends StatelessWidget {
  const CustomSnackbarContent({
    super.key, 
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 90,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Row(
            children: [
              const SizedBox(width: 40),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oh Snap!",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(5)),
                      child: Text(
                        errorMessage,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                                      
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20)
              ),
              child: SvgPicture.asset(
                "assets/icons/bubbles.svg",
                height: 48,
                width: 40,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: -5,
            left: 0,
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap:(){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    child: SvgPicture.asset(
                      "assets/icons/fail.svg",
                      height: 40,
                      color: Colors.white,
                      
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    child: SvgPicture.asset(
                      "assets/icons/Close.svg",
                      height: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}