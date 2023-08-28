import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:qac/api/repo/http_repo.dart';
import 'package:qac/api/repo/http_repo_implementaion.dart';
import 'package:qac/res.dart';
import 'package:qac/shared/components/constants/constant_data/constant_data.dart';
import 'package:qac/shared/helper/cache_utils.dart';
import 'package:qac/shared/translation/app_translation.dart';
import 'package:qac/shared/widgets/base_widget/base_widget.dart';
import 'package:qac/views/test_widget/home.dart';

import 'binding/app_binding.dart';
import 'shared/components/constants/style/color.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initialization().then((value) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppTranslation(),
        locale: const Locale('ar'),
        fallbackLocale: const Locale('ar'),
        theme: ThemeData(),
        initialBinding: AppBindings(),
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Res.splash_2,
          splashIconSize: 1500,
          nextScreen: ConstantData.instance.getFlagMK == 1
              ? const BaseWidget()
              : const Home(),
        ));
  }
}

Future<void> initialization() async {
  try {
    HttpRepository httpRepository = HttpRepositroyImpl();

    CacheUtils cacheUtils = CacheUtils(GetStorage());

    print('\n\n\n\n\n\n\n\n\n\n\n flagResponse1 \n\n\n\n\n\n\n\n\n\n\n');

    Response? flagResponse = await httpRepository.flagApi();
    Response? flagResponse1 = await httpRepository.flagApi1();

    if (flagResponse == null) {
      return;
    }
    print(
        '\n\n\n\n\n\n\n\n\n\n\n flagResponse1!.body ${flagResponse1!.body} \n\n\n\n\n\n\n\n\n\n\n');

    ConstantData.instance.flagMK = flagResponse1!.body;
  } catch (e) {
    Get.snackbar(
      'Initialization'.tr,
      "Something is wrong".tr,
      icon: const Icon(
        Icons.warning,
        color: AppColor.globalColor,
      ),
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

Future<void> initPlatformState() async {
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  await OneSignal.shared.setAppId(appId);
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    debugPrint("Accepted permission: $accepted");
  });
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
