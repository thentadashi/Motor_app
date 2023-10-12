import 'package:flutter/material.dart';
import 'package:pharma_shop/components/custom_suffix_icon.dart';
import 'package:pharma_shop/components/default_button.dart';
import 'package:pharma_shop/components/form_error.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:pharma_shop/size_config.dart';

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
            press: (){
              if(_formKey.currentState!.validate()){
                // go to complete profile page
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
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