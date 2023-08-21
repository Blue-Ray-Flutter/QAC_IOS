import 'dart:io';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperUtils {
  static const webBaseUrl = 'http://platin.blueraydev.com';
  static const _androidMobileType = '1';
  static const _iOSMobileType = '2';
  static void launchExternalUrl(String webUrl) async {
    var webUri = Uri.parse(webUrl);
    var isLaunched =
        await launchUrl(webUri, mode: LaunchMode.externalApplication);
    if (!isLaunched) {
      Get.snackbar('open_external', 'open_external_error');
    }
  }

  static String getMobileType() {
    if (Platform.isAndroid) {
      return _androidMobileType;
    } else if (Platform.isIOS) {
      return _iOSMobileType;
    } else {
      return _androidMobileType;
    }
  }
}
