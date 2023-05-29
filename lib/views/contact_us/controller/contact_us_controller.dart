import 'package:adobe/api/repo/http_repo.dart';
import 'package:adobe/shared/components/constants/style/color.dart';
import 'package:adobe/shared/helper/cache_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUsController extends GetxController {
  final HttpRepository httpRepository;
  final CacheUtils cacheUtils;

  ContactUsController({
    required this.httpRepository,
    required this.cacheUtils,
  });

  final fullNameController = TextEditingController();
  final schoolNameController = TextEditingController();
  final phoneController = TextEditingController();
  final questionController = TextEditingController();
  final emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  contactUs() async {
    late Rx<Response?> contactUsResponse = Rx<Response?>(null);
    try {
      await httpRepository.contactUs(
        name: fullNameController.text,
        email: emailController.text,
        phoneNumber: phoneController.text,
        question: questionController.text,
        schoolName: schoolNameController.text,
      );

      if (contactUsResponse.value == null) {
        return null;
      }
    } catch (e) {
      Get.snackbar(
        'Contact Us'.tr,
        'Something is wrong'.tr,
        icon: const Icon(
          Icons.warning,
          color: Colors.white,
        ),
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColor.globalColor,
        borderRadius: 15,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeInCirc,
      );
      e.printError();
    }
  }
}
