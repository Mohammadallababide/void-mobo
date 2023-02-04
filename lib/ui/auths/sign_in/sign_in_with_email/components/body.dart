import 'package:flutter/material.dart';
import '../../../../../core/size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password  \n or continue with phone nubmber",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      "Continue with phone nubmber : ",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(3)),
                        child: Icon(
                          Icons.phone_android,
                          size: getProportionateScreenWidth(26),
                        ),
                      ),
                    )
                  ],
                )
                // SizedBox(height: getProportionateScreenHeight(10)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
