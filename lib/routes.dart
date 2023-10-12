import 'package:flutter/widgets.dart';
import 'package:pharma_shop/screens/cart/cart_screen.dart';
import 'package:pharma_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:pharma_shop/screens/details/details_screen.dart';
import 'package:pharma_shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:pharma_shop/screens/home/home_screen.dart';
import 'package:pharma_shop/screens/login_success/login_sucess_screen.dart';
import 'package:pharma_shop/screens/otp/otp_screen.dart';
import 'package:pharma_shop/screens/profile/profile_screen.dart';
import 'package:pharma_shop/screens/sign_in/sign_in_screen.dart';
import 'package:pharma_shop/screens/sign_up/sign_up_screen.dart';
import 'package:pharma_shop/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context)=> SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routerName: (context) => DetailsScreen(),
  CartScreen.routName:(context) => CartScreen(),
  ProfileScreen.routeName: (context )=> ProfileScreen(),
};


