import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInWithOtpScreen extends StatelessWidget {
  static String routeName = "/sign_in_with_otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
