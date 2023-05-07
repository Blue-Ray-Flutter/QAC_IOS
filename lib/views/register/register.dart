import 'package:adobe/shared/components/button/elevated_button.dart';
import 'package:adobe/shared/components/constants/style/color.dart';
import 'package:adobe/views/register/controller/register_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../res.dart';
import '../../shared/components/button/button.dart';

class RegisterPage extends GetWidget<RegisterController>{
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  // name controller & password controller & email controller & username controller & phone controller
    return SafeArea(child:
    Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(left: 20,right:20),
        child: Form(


          child: ListView(
padding: const EdgeInsets.only(top: 20,bottom: 40,),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,),
                child: CarouselSlider(
                  items: [
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: SvgPicture.asset(
                        Res.register,
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
                'Register Now',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Create a new account in a minute',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              //name text field
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration:  InputDecoration(
                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.nameController,
                  obscureText: false,
                  keyboardType: TextInputType.name,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'User Name',
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
                  decoration:  InputDecoration(
                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.userNameController,
                  obscureText: true,
                ),


              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
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
                  decoration:  InputDecoration(
                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
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
                  decoration:  InputDecoration(
                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(

                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.passwordController,
                  obscureText: false,
                  keyboardType: TextInputType.text,
                ),
              ),

              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Retype password',
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
                  decoration:  InputDecoration(

                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 0.4),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Phone number',
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
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]&&[+]')),
                  ],
                  decoration:  InputDecoration(
                    fillColor: Colors.grey[300]!.withOpacity(0.4),
                    filled: true,
                    border: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0))),
                  ),
                  controller: controller.phoneController,
                  obscureText: false,
                  keyboardType: TextInputType.phone,
                ),
              ),

              const SizedBox(
                height: 20,
              ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: DefaultElevatedButton(


              onPressed: () {
                Get.to(() => const RegisterPage());
              }, shape:RoundedRectangleBorder(
              side : const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(15),
            ),


              backgroundColor: AppColor.globalColor ,


              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),






            ],
          ),
        ),
      ),
    )

    );
  }
  
}