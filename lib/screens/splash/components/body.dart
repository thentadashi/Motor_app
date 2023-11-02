// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import, camel_case_types
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/components/default_button.dart';
import 'package:Motorcycle_shop_app/constant.dart';
import 'package:Motorcycle_shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:Motorcycle_shop_app/size_config.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
    int currentPage = 0;
    List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Motorcycle shop app, Driving Dreams, Delivering Quality!",
      "image": "assets/images/splash.jpg"
    },
    {
      "text": "We help people connect with the store \naround Philippines",
      "image": "assets/images/splash.jpg"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home  with us",
      "image": "assets/images/splash.jpg"
    },
  
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"] ??"",
                    text: splashData[index]["text"] ??"",
                    key: UniqueKey(),
                    ),
                  ),
                ),
              Expanded(
                flex:2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)
                  ),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 4,),
                    defaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      }, 
                      key: UniqueKey(),
                    ),
                    Spacer(flex: 2,),
                  ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }



  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
      color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}




