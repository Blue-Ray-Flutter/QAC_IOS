import 'package:adobe/shared/components/gap/gap.dart';
import 'package:adobe/views/contact_us/controller/contact_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/components/button/default_elevated_button.dart';
import '../../../shared/components/constants/style/color.dart';

final _formKey = GlobalKey<FormState>();

class ContactUs extends GetWidget<ContactUsController> {
  const ContactUs({Key? key}) : super(key: key);

  Future<void> goToWebPage(String urlString) async {
    final Uri _url = Uri.parse(urlString);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            TextFormField(
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
              decoration: InputDecoration(
                hintText: 'City or Village Name'.tr,
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
              controller: controller.cityNameController,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            const Gap(
              height: 16,
            ),
            TextFormField(
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
                onPressed: () {},
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
                      await goToWebPage('https://www.facebook.com/qac.jo');
                    },
                    icon: const Icon(
                      Icons.facebook,
                      size: 30,
                    )),
                IconButton(
                  onPressed: () async {
                    await goToWebPage('https://www.youtube.com/user/qacjo');
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
