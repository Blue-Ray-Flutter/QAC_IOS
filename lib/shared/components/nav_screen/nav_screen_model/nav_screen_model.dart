import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/views/announcment/view/announcment.dart';
import 'package:qac/views/contact_us/view/contact_us.dart';
import 'package:qac/views/main_page/view/main_page.dart';

import '../../../../views/more/view/more.dart';

class BottomNavItemModel {
  NavBarItem navBarItem;
  IconData icon;
  String name;
  Widget widget;

  BottomNavItemModel({
    required this.widget,
    required this.navBarItem,
    required this.name,
    required this.icon,
  });
}

enum NavBarItem {
  home,
  announcement,
  aboutUs,
  contactus,
  add,
}

List navScreens = <BottomNavItemModel>[
  BottomNavItemModel(
    name: 'Home Page'.tr,
    icon: Icons.home_outlined,
    navBarItem: NavBarItem.home,
    widget: const MainPage(),
  ),
  BottomNavItemModel(
    name: 'About Us'.tr,
    icon: Icons.info_outline,
    navBarItem: NavBarItem.aboutUs,
    widget: const MoreItems(),
  ),
  BottomNavItemModel(
    name: 'Announcement'.tr,
    icon: Icons.campaign_outlined,
    navBarItem: NavBarItem.announcement,
    widget: const Announcement(),
  ),
  BottomNavItemModel(
    name: 'Contact Us'.tr,
    icon: Icons.email_outlined,
    navBarItem: NavBarItem.contactus,
    widget: const ContactUs(),
  ),
];
