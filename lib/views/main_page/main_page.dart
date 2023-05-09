import 'package:adobe/shared/components/constants/style/color.dart';
import 'package:adobe/shared/components/widget/size_config.dart';
import 'package:adobe/views/main_page/controller/main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res.dart';

class MainPage extends GetWidget<MainPageController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        child: Stack(
          // alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(500),
                    bottomRight: Radius.circular(500)),
              ),
            ),
            Container(
              height: SizeConfig.screenHeight * 0.7,
              width: SizeConfig.screenWidth,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(Res.leaf),
                fit: BoxFit.fitWidth,
              )),
            ),
            const Positioned(
                bottom: 180,
                left: 35,
                child: Text(
                  'Awareness Campaign to restore the Ecosystem',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: AppColor.pink),
                )),
            const Positioned(
                bottom: 150,
                left: 35,
                child: Text(
                  ' Minor daily actions can make a big difference',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )),
            Positioned(
              bottom: 65,
              left: 180,
              child: SizedBox(
                height: 70,
                width: 70,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.all(10),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
