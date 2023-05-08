import 'package:adobe/shared/components/gap/gap.dart';
import 'package:adobe/views/contact_us/controller/contact_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/components/button/elevated_button.dart';
import '../../shared/components/constants/style/color.dart';

final _formKey = GlobalKey<FormState>();

class ContactUs extends GetWidget<ContactUsController> {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contact Us'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      fillColor: Colors.grey[300]!.withOpacity(0.4),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.fullNameController,
                    obscureText: false,
                    keyboardType: TextInputType.name,
                  ),
                  Gap(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'School or University Name',
                      fillColor: Colors.grey[300]!.withOpacity(0.4),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.schoolNameController,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  Gap(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'City or Village Name',
                      fillColor: Colors.grey[300]!.withOpacity(0.4),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.cityNameController,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  Gap(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
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
                  Gap(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
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
                  Gap(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Your Question',
                      fillColor: Colors.grey[300]!.withOpacity(0.4),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                    ),
                    controller: controller.questionController,
                    obscureText: false,
                    keyboardType: TextInputType.text,
                  ),
                  Gap(
                    height: 16,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: DefaultElevatedButton(
                      onPressed: () {
                        // Get.to(() => const BottomAsABody());
                      },
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: AppColor.pink),
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
                  )
                ],
              )),
        ));
  }
}
