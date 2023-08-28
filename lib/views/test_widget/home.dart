import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/shared/components/constants/constant_data/constant_data.dart';
import 'package:qac/shared/components/constants/style/color.dart';
import 'package:qac/shared/components/nav_screen/nav_screen_model/nav_screen_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.globalColor[100],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: indexTestNav,
        onDestinationSelected: (int index) {
          setState(() {
            indexTestNav = index;
          });
        },
        backgroundColor: Colors.white,
        indicatorColor: AppColor.globalColor,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            icon: const Icon(Icons.home_outlined),
            label: 'Home'.tr,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.card_giftcard,
              color: Colors.white,
            ),
            icon: const Icon(Icons.card_giftcard),
            label: 'Prize'.tr,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            icon: const Icon(Icons.info_outline),
            label: 'About Us'.tr,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.campaign_outlined,
              color: Colors.white,
            ),
            icon: const Icon(Icons.campaign_outlined),
            label: 'Announcement'.tr,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.email_outlined,
              color: Colors.white,
            ),
            icon: const Icon(Icons.email_outlined),
            label: 'Contact Us'.tr,
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: AppColor.globalColor,
        centerTitle: true,
        title: Text(
          testNavScreens[indexTestNav].name,
          style: const TextStyle(
            color: AppColor.globalInvertedColor,
          ),
        ),
      ),
      body: testNavScreens[indexTestNav].widget,
    );
  }
}
