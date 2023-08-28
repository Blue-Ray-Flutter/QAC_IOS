import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../res.dart';
import '../../../../views/announcment/pages/audibles/audibles.dart';
import '../../../../views/announcment/pages/media_center/media_center.dart';
import '../../../../views/announcment/pages/news/news.dart';
import '../../../../views/announcment/pages/videos/videos.dart';
import '../../../../views/more/model/more_item_model.dart';
import '../../../../views/more/pages/about/about.dart';
import '../../../../views/more/pages/committiees/committees.dart';
import '../../../../views/more/pages/mission/mission.dart';
import '../../../../views/more/pages/utilities/utilities.dart';
import '../../../../views/more/pages/vision/vision.dart';
import '../style/color.dart';

String appId = "acea0bfc-f639-4fa3-9de4-ad22d617b864";
int indexNav = 1;
int indexTestNav = 1;

class ConstantData {
  int? _flagMK;

  ConstantData._privateConstructor();

  static final ConstantData _instance = ConstantData._privateConstructor();

  static ConstantData get instance => _instance;

  int? get getFlagMK => _flagMK;

  set flagMK(int? value) {
    _flagMK = value;
  }
}

bool isValidEmail(value) {
  return RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(value);
}

List<MoreItemModel> moreItemList = [
  MoreItemModel(
    svg: Res.infobook,
    onPressed: () {
      Get.to(() => AboutUsWebView());
    },
    color: AppColor.blueBanner,
    text: 'About Us'.tr,
    height: 300,
    width: 300,
    icon: Icons.add,
  ),
  MoreItemModel(
    svg: Res.utils,
    onPressed: () {
      Get.to(() => UtilitiesWebView());
    },
    color: AppColor.purpleBanner,
    text: 'Our Utilities'.tr,
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.vision,
    onPressed: () {
      Get.to(() => VisionWebView());
    },
    color: AppColor.orangeBanner,
    text: 'Our Vision'.tr,
    height: 250,
    width: 250,
  ),
  MoreItemModel(
    svg: Res.mision,
    onPressed: () {
      Get.to(() => const MissionWebView());
    },
    color: AppColor.greenBanner,
    text: 'Our Mission'.tr,
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.commities,
    onPressed: () {
      Get.to(() => CommitteesWebView());
    },
    color: AppColor.darkRedBanner,
    text: 'Committees'.tr,
    height: 300,
    width: 300,
  ),
];

List<MoreItemModel> mediaCenterList = [
  MoreItemModel(
    svg: Res.printable,
    onPressed: () {
      Get.to(() => MediaCenterWebView());
    },
    color: AppColor.red,
    text: 'Printed Media'.tr,
    height: 300,
    width: 300,
    icon: Icons.add,
  ),
  MoreItemModel(
    svg: Res.news,
    onPressed: () {
      Get.to(() => const NewsWebView());
    },
    color: Colors.lightGreen,
    text: 'News'.tr,
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.video,
    onPressed: () {
      Get.to(() => VideosWebView());
    },
    color: Colors.purple,
    text: 'Videos Gallery'.tr,
    height: 250,
    width: 250,
  ),
  MoreItemModel(
    svg: Res.audio,
    onPressed: () {
      Get.to(() => AudiblesWebView());
    },
    color: Colors.teal,
    text: 'Audibles'.tr,
    height: 300,
    width: 300,
  ),
];
