// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void, use_build_context_synchronously


import 'package:flutter/material.dart';
import 'package:pharma_shop/components/custom_suffix_icon.dart';
import 'package:pharma_shop/components/default_button.dart';
import 'package:pharma_shop/components/form_error.dart';
import 'package:pharma_shop/constant.dart';
import 'package:pharma_shop/screens/login_success/login_sucess_screen.dart';
import 'package:pharma_shop/size_config.dart';
import 'package:pharma_shop/auth/session_manager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  final List<String> errors = [];
  SessionManager sessionManager = SessionManager();


  void showErrorSnackBar(String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
  

  Future<void> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.100.175:81/flutter_apps/Pharma_app/login/login_script.php'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data["success"]) {
        // Set session data
        await sessionManager.setLoggedIn(true);
        await sessionManager.setUserId(data["user_id"].toString());
        Navigator.pushNamed(context, LoginSuccessScreen.routeName);
      } else {
        showErrorSnackBar("Login failed: Invalid credentials");
      }
    } else {
      showErrorSnackBar("Login failed: Invalid credentials");
    }
  }

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
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          defaultButton(
            text: "Continue",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Make a login request here
                await login(email, password);
              }
            },
            key: UniqueKey(),
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(error: kPassNullError);
        }
        return null;
      },
      validator: (value) {
        if (value?.isEmpty ?? true && !errors.contains(kPassNullError)) {
          addError(error: kPassNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(error: kEmailNullError);
        }
        return null;
      },
      validator: (value) {
        if (value?.isEmpty ?? true && !errors.contains(kEmailNullError)) {
          addError(error: kEmailNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
