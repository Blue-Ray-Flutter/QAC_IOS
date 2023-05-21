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
      body: Obx(() {
        return controller.flagModel.value == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColor.globalColor,
                ),
              )
            : SizedBox(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight * 0.77,
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(500),
                            bottomRight: Radius.circular(500)),
                      ),
                    ),
                    Container(
                      height: SizeConfig.screenHeight * 0.8,
                      width: SizeConfig.screenWidth * 0.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(Res.leaf),
                        fit: BoxFit.fitWidth,
                      )),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.4,
                      width: SizeConfig.screenWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Awareness Campaign to restore the Ecosystem',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, color: Colors.pink),
                          ),
                          Text(
                            'Minor daily actions can make a big difference',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.2,
                      width: SizeConfig.screenWidth,
                      child: controller.flagModel.value!.value == 1
                          ? Container()
                          : Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.lightPink),
                                  height: SizeConfig.screenHeight * 0.75,
                                  width: SizeConfig.screenWidth * 0.2,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColor.lightPink),
                                  height: SizeConfig.screenHeight * 0.18,
                                  width: SizeConfig.screenWidth * 0.18,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: Colors.pink,
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
                              ],
                            ),
                    ),
                  ],
                ),
              );
      }),
      // bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
