import 'package:adobe/shared/components/button/button.dart';
import 'package:adobe/shared/components/button/elevated_button.dart';
import 'package:adobe/shared/components/gap/gap.dart';
import 'package:adobe/views/login/controller/login_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../res.dart';
import '../../shared/components/constants/style/color.dart';
import '../register/register.dart';

bool _isPasswordVisible = false;
final _formKey = GlobalKey<FormState>();

class LoginPage extends GetWidget<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CarouselSlider(

                    items: [
                      SizedBox(
                        width: 350,
                        height: 300,
                        child: SvgPicture.asset(
                          Res.login,
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        height: 300,
                        child: SvgPicture.asset(
                          Res.register,
                        ),
                      ),
                    ],
                    options: CarouselOptions(

                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(
                        microseconds: 1000,
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
                const Gap(
                  height: 16,
                ),
                const Text(
                  'Login or Create a new account',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                const Gap(
                  height: 16,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const Gap(),
                TextFormField(
                  validator: (value) {
                    // add email validation
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
                    if (!emailValid) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.emailController,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                const Gap(),
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
                const Gap(),
                Obx(
                    ()=>TextFormField(
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return 'Please enter some text';
                      }

                      if (password.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    obscureText: controller.obscureText.value,
                    decoration: InputDecoration(
                      suffixIcon:IconButton(
                        icon: Icon(
                          controller.obscureText.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: controller.toggleObscureText,
                      ),
                      fillColor: Colors.grey[300]!.withOpacity(0.4),

                      filled: true,

                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color:AppColor.globalColor),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.passwordController,

                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forgot Your Password?',
                      style: TextStyle(color: AppColor.globalColor),
                    ),
                  ),
                ),
                const Gap(),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: DefaultElevatedButton(
                    backgroundColor: Colors.green,
                    onPressed: () {
                     if (_formKey.currentState!.validate()) {
                       controller.logIn();
                        }
                    }, shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Gap(),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: DefaultElevatedButton(


                    onPressed: () {

                      Get.to(() => const RegisterPage());
                    }, shape:RoundedRectangleBorder(
                    side : const BorderSide(color: AppColor.globalColor),
                    borderRadius: BorderRadius.circular(10),
                  ),


                    backgroundColor: Colors.white70,


                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.globalColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
