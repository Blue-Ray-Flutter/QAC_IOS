import 'package:adobe/views/web_views/about_web_view.dart';
import 'package:adobe/views/web_views/audibles_web_view.dart';
import 'package:adobe/views/web_views/committees_web_view.dart';
import 'package:adobe/views/web_views/media_center.dart';
import 'package:adobe/views/web_views/mission_web_view.dart';
import 'package:adobe/views/web_views/news_web_view.dart';
import 'package:adobe/views/web_views/utilities_web_view.dart';
import 'package:adobe/views/web_views/videos_web_view.dart';
import 'package:adobe/views/web_views/vision_web_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../res.dart';
import '../../../../views/more_item/model/more_item_model.dart';
import '../style/color.dart';

String appId = "acea0bfc-f639-4fa3-9de4-ad22d617b864";
int indexNav = 1;

List<MoreItemModel> moreItemList = [
  MoreItemModel(
    svg: Res.infobook,
    onPressed: () {
      Get.to(() => AboutUsWebView());
    },
    color: AppColor.blueBanner,
    text: 'About Us',
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
    text: 'Our Utilities',
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.vision,
    onPressed: () {
      Get.to(() => VisionWebView());
    },
    color: AppColor.orangeBanner,
    text: 'Our Vision',
    height: 250,
    width: 250,
  ),
  MoreItemModel(
    svg: Res.mision,
    onPressed: () {
      Get.to(() => MissionWebView());
    },
    color: AppColor.greenBanner,
    text: 'Our Mission',
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.commities,
    onPressed: () {
      Get.to(() => CommitteesWebView());
    },
    color: AppColor.darkRedBanner,
    text: 'Committees',
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
    color: AppColor.blueBanner,
    text: 'Printed Media',
    height: 300,
    width: 300,
    icon: Icons.add,
  ),
  MoreItemModel(
    svg: Res.news,
    onPressed: () {
      Get.to(() => const NewsWebView());
    },
    color: AppColor.purpleBanner,
    text: 'News',
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.video,
    onPressed: () {
      Get.to(() => VideosWebView());
    },
    color: AppColor.orangeBanner,
    text: 'Videos Gallery ',
    height: 250,
    width: 250,
  ),
  MoreItemModel(
    svg: Res.audio,
    onPressed: () {
      Get.to(() => AudiblesWebView());
    },
    color: AppColor.greenBanner,
    text: 'Audibles',
    height: 300,
    width: 300,
  ),
];
