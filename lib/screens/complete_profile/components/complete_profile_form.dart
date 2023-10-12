import 'package:flutter/material.dart';
import 'package:pharma_shop/components/custom_suffix_icon.dart';
import 'package:pharma_shop/components/default_button.dart';
import 'package:pharma_shop/components/form_error.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/screens/otp/otp_screen.dart';
import 'package:pharma_shop/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String firstName = "";
  String lastName = "";
  String phoneNumber = "";
  String address = "";

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
      key:_formKey,
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02,),
            buildFirstNameFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            buildLastNameFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            buildPhoneNumberField(),
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            BuildAddressFormField(),
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            FormError(errors: errors), 
            SizedBox(height: SizeConfig.screenHeight * 0.04,),
            defaultButton(
              text: "Continue", 
              press: () {
                if(_formKey.currentState!.validate()){
                  // go to OTP Screen
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              },
              key: UniqueKey(),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField BuildAddressFormField() {
    return TextFormField(
              onSaved: (newValue) => address = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty && 
                    errors.contains(kAddressNullError)) {
                  setState(() {
                    errors.remove(kAddressNullError);
                  });
                }
                return null;
              }, 
              validator: (value) {
                if (value?.isEmpty ?? true && !errors.contains(kAddressNullError)) {
                  setState(() {
                    errors.add(kAddressNullError);
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter your address",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
            ),
          );
  }

  TextFormField buildPhoneNumberField() {
    return TextFormField(
              keyboardType:TextInputType.number,
              onSaved: (newValue) => phoneNumber = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty && 
                    errors.contains(kPhoneNumberNullError)) {
                  setState(() {
                    errors.remove(kPhoneNumberNullError);
                  });
                }
                return null;
              }, 
              validator: (value) {
                if (value?.isEmpty ?? true && !errors.contains(kPhoneNumberNullError)) {
                  setState(() {
                    errors.add(kPhoneNumberNullError);
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter your phone number",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
            ),
          );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
              onSaved: (newValue) => lastName = newValue!,
              decoration: InputDecoration(
                labelText: "Last name",
                hintText: "Enter your Last name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
            ),
          );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
              onSaved: (newValue) => firstName = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty && 
                    errors.contains(kNameNullError)) {
                  setState(() {
                    errors.remove(kNameNullError);
                  });
                }
                return null;
              }, 
              validator: (value) {
                if (value?.isEmpty ?? true && !errors.contains(kNameNullError)) {
                  setState(() {
                    errors.add(kNameNullError);
                  });
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "First name",
                hintText: "Enter your first name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
            ),
          );
  }
}