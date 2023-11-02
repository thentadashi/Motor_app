import 'package:flutter/material.dart';
import 'package:Motorcycle_shop_app/size_config.dart';

const kPrimaryColor = Color(0xFF01579B);
const kPrimaryLightColor = Color(0xFFB3E5FC);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors:[Color(0xFF0277BD), Color(0xFF01579B)],
  );
  const kSecondaryColor = Color(0xFF979797);
  const kTextColor = Color(0xFF757575);


const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
            fontSize: getProportionateScreenWidth(55),
            fontWeight: FontWeight.bold,
            color: Colors.black,
            height: 1.5,
          );

  //form error
final RegExp emailValidatorRegExp =
        RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please enter your email";
const String kInvalidEmailError = "Please enter valid email";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please enter your name";
const String kPhoneNumberNullError = "Please enter your phone number";
const String kAddressNullError = "Please enter your address";

// inputDecoration

final otpInputDecoration =  InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenWidth(30),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
 );

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(color: kTextColor),
 );
}







