
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/api/repo/http_repo.dart';

import '../../shared/components/constants/style/color.dart';
import '../api_url/api_url.dart';

class HttpRepositroyImpl extends GetConnect implements HttpRepository {
  @override
  void onInit() {
    httpClient.timeout = const Duration(seconds: 30);
    super.onInit();
  }

  @override
  Future<Response?> flagApi() async {
    var response = await get(UrlApi.flagUrl);
    if (response.isOk) {
      return response;
    } else if (response.hasError) {
      Get.snackbar(
        'Get Flag',
        '${response.body!["message"]}',
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
    return null;
  }

  @override
  Future<void> contactUs({
    required String name,
    required String schoolName,
    required String phoneNumber,
    String? email,
    required String question,
  }) async {
    final formData = FormData({
      "name": name,
      "email": email,
      "school_name": schoolName,
      "phone_number": phoneNumber,
      "question": question,
    });

    var response = await post(
      UrlApi.contactUrl,
      formData,
    );
    if (response.isOk) {
      Get.snackbar(
        'Contact Us'.tr,
        '${response.body!["data"]["message"]}'.tr,
        icon: const Icon(
          Icons.done,
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
    } else if (response.hasError) {
      Get.snackbar(
        'Contact Us'.tr,
        '${response.body!["data"]["message"]}'.tr,
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
  }

  @override
  Future<Response?> getHomePage() async {
    var response = await get(UrlApi.homePageDataUrl);
    if (response.isOk) {
      return response;
    } else if (response.hasError) {
      Get.snackbar(
        'Get home page',
        '${response.body!["message"]}',
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
    return null;
  }
}
