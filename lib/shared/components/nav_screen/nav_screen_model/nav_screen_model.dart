import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/res/assets_res.dart';
import 'package:qac/views/announcment/view/announcment.dart';
import 'package:qac/views/contact_us/view/contact_us.dart';
import 'package:qac/views/main_page/view/main_page.dart';

import '../../../../views/more/view/more.dart';
import '../../../../views/test_widget/test_widget.dart';

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
List testNavScreens = <BottomNavItemModel>[
  BottomNavItemModel(
    name: 'Home Page'.tr,
    icon: Icons.home_outlined,
    navBarItem: NavBarItem.home,
    widget: ListView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 10,
        left: 10,
      ),
      children: [
        SizedBox(
          height: 250,
          width: double.infinity,
          child: CarouselSlider(
            items: [
              Container(
                height: 220,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsRes.TEST_1,
                    ),
                  ),
                ),
              ),
              Container(
                height: 220,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsRes.TEST_2,
                    ),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true,
              height: 250,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => TestWidget(
                        image: AssetsRes.PRIZE_1,
                        name:
                            'The Queen Rania Award for Excellence in Education',
                        body:
                            'Established in 2005, the QRAEE honors distinguished educators across Jordan annually. Awardees attend a royal ceremony under the patronage of Her Majesty Queen Rania Al Abdullah and receive a financial reward, a higher rank at the Ministry of Education (MoE) and quality professional and academic development in Jordan and abroad. The awards strengthen the educational sector by reinforcing a culture of excellence and continued development as distinguished educators are motivated to become agents of change in their communities.In recognition of the critical role education plays in developing a productive and informed society and the role educators play in instilling the values of excellence in successive generations, QRAEE promotes educators status in society. QRAEE aims to restore teaching as a noble profession, reminding society of the great respect Arab culture has always reserved for teachers',
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            AssetsRes.PRIZE_1,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'The Queen Rania Award for Excellence in Education',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => TestWidget(
                        image: AssetsRes.PRIZE_2,
                        name: 'Queen Rania Rewards Distinguished Teachers',
                        body:
                            "In an awards ceremony, held in honor of those distinguished teachers, on Wednesday, Her Majesty Queen Rania Al-Abdullah distributed the first annual award for excellence in teaching and praised all the teachers for their efforts in advancing the potential of students. We know the enormous responsibilities you are shouldering and we are proud of your achievements and your work ethic, said Her Majesty, let me reassure you that as you do so we stand by you and support you in this vital endeavor.This year’s first place winners were chosen from more than 1,100 nominees. Naeem Ali Al-Abeesi Al Bawayzeh received the Distinguished Teacher Award for KG – 3rd grade; Maha Harbee Abdulaziz Al-Shaksheer for 4th -8th grade; Hiyam Khader Yusim Abu Areedah for 9th and 10th grade; Khawla Abdulmihdee Ali Al-Maayah for the Academic Tawjihi; and Hannah Mikhael Abdullah Al-Saeed Maqtash for the Vocational Tawjihi.",
                      ));
                },
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            AssetsRes.PRIZE_2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Queen Rania Rewards Distinguished Teachers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'A tool of the Jordanian Hashemite Registration for Human Development, activation of social development and community awareness in ways and incentives in partnership with community integration and the embodiment of social responsibilities',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
  BottomNavItemModel(
    name: 'Prize'.tr,
    icon: Icons.card_giftcard,
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
