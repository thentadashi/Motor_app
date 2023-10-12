import "package:flutter/material.dart";
import "package:pharma_shop/components/custom_suffix_icon.dart";
import "package:pharma_shop/components/default_button.dart";
import "package:pharma_shop/components/form_error.dart";
import "package:pharma_shop/components/no_account_text.dart";
import "package:pharma_shop/constant.dart";
import "package:pharma_shop/size_config.dart";

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(50),
            ),
          child: Column(
            children: [
              SizedBox( height: SizeConfig.screenHeight * 0.04),
              Text("Forgot Password", 
              style: TextStyle(
                fontSize: getProportionateScreenWidth(55),
                color: Colors.black,
                fontWeight: FontWeight.bold,
               ),
              ),
              Text(
                "Please enter your email we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
                ),
              SizedBox( height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}
class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
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
              }else if(!emailValidatorRegExp.hasMatch(value!) && !errors.contains(kInvalidEmailError)){
               setState(() {
                 errors.add(kInvalidEmailError);
               });
              }
              return null;
            },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:  CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox( height: SizeConfig.screenHeight * 0.1),
          defaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState!.validate()){
                  
              }
            }, 
            key: UniqueKey(),
          ),
          SizedBox( height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}