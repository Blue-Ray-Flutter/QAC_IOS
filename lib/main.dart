import 'package:adobe/shared/widgets/base_widget/base_widget.dart';
import 'package:adobe/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'binding/app_binding.dart';

Future<void> main() async {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(

      ),
      initialBinding: AppBindings(),

      home: const BaseWidget(),
    );
  }}