
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get_storage/get_storage.dart';

import '../api/repo/http_repo.dart';
import '../api/repo/http_repo_implementaion.dart';
import '../shared/helper/cache_utils.dart';
import '../views/login/controller/login_controller.dart';
import '../views/register/controller/register_controller.dart';

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

    Get.create(() => LoginController(
      httpRepository: Get.find(),
      cacheUtils: Get.find(),
    ));

    Get.create(() => RegisterController(
      // httpRepository: Get.find(),
      // cacheUtils: Get.find(),
    ));
  }
}

