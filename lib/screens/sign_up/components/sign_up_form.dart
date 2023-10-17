import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pharma_shop/auth/session_manager.dart';
import 'package:pharma_shop/components/custom_error_snackbar.dart';
import 'package:pharma_shop/components/custom_suffix_icon.dart';
import 'package:pharma_shop/components/default_button.dart';
import 'package:pharma_shop/components/form_error.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:pharma_shop/size_config.dart';
import 'package:http/http.dart' as http;

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confirm_password = "";
  SessionManager sessionManager = SessionManager();
  final List<String> errors = [];
  

    void addError({String? error}) {
    if (!errors.contains(error))
    setState(() {
      errors.add(error!);
    });
  }

    void removeError({String? error}) {
    if (!errors.contains(error))
    setState(() {
      errors.remove(error);
    });
  }

    void showErrorSnackBar(String errorMessage) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: CustomSnackbarContent(errorMessage:errorMessage,),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      );
    }

      Future<void> signUp(String email, String password) async {
        final response = await http.post(
          Uri.parse('http://192.168.100.175:81/flutter_apps/Pharma_app/sign_up/sign_up_script.php'),
          body: {
            'email': email,
            'password': password,
          },
        );

        if (response.statusCode == 200) {
          final Map<String, dynamic> data = json.decode(response.body);
          if (data["success"]) {
            final String userId = data["user_id"].toString();
            Navigator.pushNamed(context, CompleteProfileScreen.routeName, arguments: userId);
          } else {
            showErrorSnackBar("Registration failed: ${data["message"]}");
          }
        } else {
          showErrorSnackBar("Registration failed: An error occurred.");
        }
      }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          defaultButton(
            text: "Continue", 
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                await signUp(email, password);
              }
            },
            key: UniqueKey(),
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => confirm_password = newValue!,
        onChanged: (value) {
          if (password == confirm_password) {
            setState(() {
              errors.remove(kMatchPassError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
          return "";
          }else if(password != value){
           setState(() {
             errors.add(kMatchPassError);
           });
          return "";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Confirm password",
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
        ),
      );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue!,
          onChanged: (value) {
            if (value.isNotEmpty && 
                errors.contains(kPassNullError)) {
              setState(() {
                errors.remove(kPassNullError);
              });
            }else if(value.length >= 8  && errors.contains(kShortPassError)){
             setState(() {
               errors.remove(kShortPassError);
             });
            }
            password = value;
            return null;
          },
          validator: (value) {
            if (value?.isEmpty ?? true && !errors.contains(kPassNullError)) {
              setState(() {
                errors.add(kPassNullError);
              });
            return "";
            }else if(value!.length < 8  && !errors.contains(kShortPassError)){
             setState(() {
               errors.add(kShortPassError);
             });
            return "";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
        ),
      );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
            keyboardType:TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && 
                  errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              }else if(emailValidatorRegExp.hasMatch(value) && 
                errors.contains(kInvalidEmailError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
              }
              return null;
            }, 
            validator: (value) {
              if (value?.isEmpty ?? true && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
                return "";
              }else if(!emailValidatorRegExp.hasMatch(value!) && !errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
              return "";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
          ),
        );
  }
}