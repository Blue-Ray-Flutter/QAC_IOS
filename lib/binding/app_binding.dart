
import 'package:adobe/views/contact_us/controller/contact_us_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../api/repo/http_repo.dart';
import '../api/repo/http_repo_implementaion.dart';
import '../shared/helper/cache_utils.dart';
import '../views/main_page/controller/main_page_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    final repository = Get.put<HttpRepository>(
      HttpRepositroyImpl(),
      permanent: true,
    );
    Get.put(
      CacheUtils(GetStorage()),
      permanent: true,
    );
    final cacheUtils = Get.find<CacheUtils>();

    Get.create(() => MainPageController(
    ));
    Get.create(() => ContactUsController(

    ));

  }
}
