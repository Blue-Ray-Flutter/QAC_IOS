import 'package:adobe/res.dart';
import 'package:adobe/views/login/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'binding/app_binding.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        initialBinding: AppBindings(),
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Res.splash_2,
          splashIconSize: 1500,
          nextScreen: const LoginPage(),
        ));
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
