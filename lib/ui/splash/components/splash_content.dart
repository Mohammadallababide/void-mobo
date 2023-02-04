import 'package:flutter/material.dart';

import '../../../core/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          "void".toUpperCase(),
          style: TextStyle(
            fontSize: getProportionateScreenWidth(50),
            color: const Color(0xff000000),
            letterSpacing: 10,
            fontFamily: 'Akronim',
        
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image!,
          fit: BoxFit.fill,
          height: getProportionateScreenHeight(230),
          width: getProportionateScreenWidth(290),
        ),
      ],
    );
  }
}
