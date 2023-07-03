import 'package:qac/shared/components/gap/gap.dart';
import 'package:qac/views/contact_us/controller/contact_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/components/button/default_elevated_button.dart';
import '../../../shared/components/constants/style/color.dart';

class ContactUs extends GetWidget<ContactUsController> {
  const ContactUs({Key? key}) : super(key: key);

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: ListView(
          padding: const EdgeInsets.only(
            top: 45,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Full name is required'.tr;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Full Name'.tr,
                fillColor: Colors.grey[300]!.withOpacity(0.4),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blueBanner,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              controller: controller.fullNameController,
              obscureText: false,
              keyboardType: TextInputType.name,
            ),
            const Gap(
              height: 16,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'School or university name is required'.tr;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'School or University Name'.tr,
                fillColor: Colors.grey[300]!.withOpacity(0.4),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blueBanner,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              controller: controller.schoolNameController,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            const Gap(
              height: 16,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone number is required'.tr;
                }
                bool emailValid =
                    RegExp(r'(^(?:[+0]9)?[0-9]{10}$)').hasMatch(value);
                if (!emailValid) {
                  return 'Enter valid number'.tr;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Phone Number'.tr,
                fillColor: Colors.grey[300]!.withOpacity(0.4),
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blueBanner,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              controller: controller.phoneController,
              obscureText: false,
              keyboardType: TextInputType.phone,
            ),
            const Gap(
              height: 16,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email address is required'.tr;
                }
                bool emailValid = RegExp(
                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                    .hasMatch(value);
                if (!emailValid) {
                  return 'Email badly formatted'.tr;
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Email Address'.tr,
                fillColor: Colors.grey[300]!.withOpacity(0.4),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blueBanner,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              controller: controller.emailController,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
            const Gap(
              height: 16,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Your question is required'.tr;
                }
                return null;
              },
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'Your Question'.tr,
                fillColor: Colors.grey[300]!.withOpacity(0.4),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blueBanner,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
              controller: controller.questionController,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            const Gap(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: DefaultElevatedButton(
                onPressed: () {
                  if (controller.formKey.currentState!.validate()) {
                    controller.contactUs();
                  } else {
                    Get.snackbar(
                      'Contact Us'.tr,
                      'Enter required fields'.tr,
                      icon: const Icon(
                        Icons.warning,
                        color: Colors.white,
                      ),
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: AppColor.globalColor,
                      borderRadius: 15,
                      margin: const EdgeInsets.all(15),
                      colorText: Colors.white,
                      duration: const Duration(seconds: 4),
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.easeOutBack,
                    );
                  }
                },
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.pink),
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.pink,
                child: Text(
                  'Send'.tr,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.globalInvertedColor,
                  ),
                ),
              ),
            ),
            const Gap(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () async {
                      String url = "https://www.facebook.com/qac.jo";
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url),
                            mode: LaunchMode.externalApplication);
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.facebook,
                      size: 30,
                    )),
                IconButton(
                  onPressed: () async {
                    String url = 'https://www.youtube.com/user/qacjo';
                    if (await canLaunchUrl(Uri.parse(url))) {
                      await launchUrl(Uri.parse(url),
                          mode: LaunchMode.externalApplication);
                    }
                  },
                  icon: const Icon(
                    FontAwesomeIcons.youtube,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
