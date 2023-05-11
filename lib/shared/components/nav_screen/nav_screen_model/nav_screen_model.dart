import 'package:adobe/views/announcment/announcment.dart';
import 'package:adobe/views/contact_us/contact_us.dart';
import 'package:adobe/views/main_page/main_page.dart';
import 'package:flutter/material.dart';

import '../../../../views/more_item/more_item.dart';

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
    name: 'Announcement',
    icon: Icons.campaign_outlined,
    navBarItem: NavBarItem.announcement,
    widget: const Announcement(),
  ),
  BottomNavItemModel(
    name: 'Home',
    icon: Icons.home_outlined,
    navBarItem: NavBarItem.home,
    widget: const MainPage(),
  ),
  BottomNavItemModel(
    name: 'Contact Us',
    icon: Icons.email_outlined,
    navBarItem: NavBarItem.contactus,
    widget: const ContactUs(),
  ),
  BottomNavItemModel(
    name: 'About Us',
    icon: Icons.import_contacts_outlined,
    navBarItem: NavBarItem.aboutUs,
    widget: const AboutUs(),
  ),
];
