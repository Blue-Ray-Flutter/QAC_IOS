import 'package:adobe/shared/components/constants/style/color.dart';
import 'package:adobe/views/main_page/model/flag_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../api/repo/http_repo.dart';
import '../../../api/repo/http_repo_implementaion.dart';
import '../../../shared/helper/cache_utils.dart';
import '../model/home_page_content.dart';

class MainPageController extends GetxController {
  MainPageController();

  RxInt currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();

  Rx<FlagModel?> flagModel = Rx<FlagModel?>(null);
  Rx<HomePageContent?> homePageContent = Rx<HomePageContent?>(null);

  @override
  void onInit() {
    initialization();
    super.onInit();
  }

  void initialization() async {
    try {
      HttpRepository httpRepository = HttpRepositroyImpl();

      CacheUtils cacheUtils = CacheUtils(GetStorage());

      Response? flagResponse = await httpRepository.flagApi();

      if (flagResponse == null) {
        return;
      }

      flagModel.value = FlagModel.fromJson(flagResponse.body);

      Response? homePageResponse = await httpRepository.getHomePage();

      if (homePageResponse == null) {
        return;
      }

      homePageContent.value = HomePageContent.fromJson(homePageResponse.body);
    } catch (e) {
      Get.snackbar(
        'Initialization'.tr,
        "Something is wrong".tr,
        icon: const Icon(Icons.warning, color: AppColor.globalColor),
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        borderRadius: 15,
        margin: const EdgeInsets.all(15),
        colorText: AppColor.globalColor,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeOutBack,
      );
      e.printError();
    }
  }
}
