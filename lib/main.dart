import 'package:car_track/core/genrated_screens.dart';
import 'package:car_track/routes.dart';
import 'package:car_track/ui/login_design_9/login_screen_9.dart';
import 'package:car_track/ui/splash/splash_screen.dart';
import 'package:car_track/core/theme.dart';
import 'package:flutter/material.dart';

import 'bloc/theme_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ThemeBloc _themeBloc;

  @override
  void initState() {
    super.initState();
    _themeBloc = ThemeBloc();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'void Demo',
    //   theme: theme(),
    //   // home: SplashScreen(),
    //   // We use routeName so that we dont need to remember the name
    //   initialRoute: SplashScreen.routeName,
    //   routes: routes,
    // );
    return StreamBuilder<ThemeData>(
      initialData: _themeBloc.initialTheme().data,
      stream: _themeBloc.themeDataStream,
      builder: (BuildContext context, AsyncSnapshot<ThemeData> snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: snapshot.data,
          darkTheme: null,
          // builder: ExtendedNavigator<AppRouter>(
          //   router: AppRouter(),
          //   initialRoute: Routes.rootScreen,
          //   initialRouteArgs: RootScreenArguments(themeBloc: _themeBloc),
          initialRoute: NameScreen.signup9,
          onGenerateRoute: GenerateScreen.onGenerate,
          // ),
        );
      },
    );
  }
}
