import 'package:adobe/views/add/add.dart';
import 'package:adobe/views/announcment/announcment.dart';
import 'package:adobe/views/contact_us/contact_us.dart';
import 'package:adobe/views/main_page/main_page.dart';
import 'package:flutter/material.dart';

import '../../../../views/about_us/about_us.dart';

class BottomNavItemModel{
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
    name: 'Home',
    icon: Icons.home,
    navBarItem: NavBarItem.home,
    widget: const MainPage(),
  ),
  BottomNavItemModel(
    name: 'Announcement',
    icon: Icons.announcement,
    navBarItem: NavBarItem.announcement,
    widget: const Announcement(),
  ),
  BottomNavItemModel(
    name: 'About Us',
    icon: Icons.info,
    navBarItem: NavBarItem.aboutUs,
    widget: const AboutUs(),
  ),
  BottomNavItemModel(
    name: 'Contact Us',
    icon: Icons.contact_page,
    navBarItem: NavBarItem.contactus,
    widget: const ContactUs(),
  ),
  BottomNavItemModel(
    name: 'Add',
    icon: Icons.add,
    navBarItem: NavBarItem.add,
    widget: const Add(),
  ),
];