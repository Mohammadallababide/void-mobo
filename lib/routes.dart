import 'package:car_track/screens/home/home_screen.dart';
import 'package:car_track/ui/auths/otp_var/otp_var_screen.dart';
import 'package:car_track/ui/auths/sign_in/sign_in_with_otp/sign_in_with_otp_screen.dart';
import 'package:flutter/widgets.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'ui/auths/forgot_password/forgot_password_screen.dart';
import 'ui/auths/login_success/login_success_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'ui/auths/sign_in/sign_in_with_email/sign_in_screen.dart';
import 'ui/auths/sign_up/sign_up_screen.dart';
import 'ui/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignInWithOtpScreen.routeName: (context) => SignInWithOtpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpVarScreen.routeName: (context) => OtpVarScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
