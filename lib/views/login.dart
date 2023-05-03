import 'package:adobe/shared/components/button/button.dart';
import 'package:adobe/views/login_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../res.dart';

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    items: [
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: SvgPicture.asset(
                          Res.login,
                        ),
                        // decoration: const BoxDecoration(
                        //   image: DecorationImage(
                        //     image: AssetImage(Res.login)
                        //   )
                        // ),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlayCurve: Curves.easeInOutBack,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(
                        microseconds: 500,
                      ),

                    ),

                  ),
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Login or Create a new account',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.emailController,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.passwordController,
                    obscureText: true,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forgot Your Password?',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(),
                    ),
                    child: Button(onPressed: () {}, text: 'Login')),
                const SizedBox(
                  height: 16,
                ),
                Button(
                  onPressed: () {},
                  text: 'Register',
                  textColor: Colors.green,
                  background: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
