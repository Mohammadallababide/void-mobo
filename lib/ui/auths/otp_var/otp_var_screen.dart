import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import 'components/body.dart';

class OtpVarScreen extends StatelessWidget {
  static String routeName = "/otp_var_screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
