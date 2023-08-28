import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/shared/components/constants/style/color.dart';
import 'package:qac/shared/components/widget/size_config.dart';
import 'package:qac/views/main_page/controller/main_page_controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../generated/assets.dart';
import '../../../res.dart';

class MainPage extends GetWidget<MainPageController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        return controller.flagModel.value == null ||
                controller.homePageContent.value == null ||
                controller.flagMK.value == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColor.globalColor,
                ),
              )
            : ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: 40,
                ),
                // crossAxisAlignment: CrossAxisAlignment.end,
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
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Stack(
                          children: [
                            Align(
                              alignment: const Alignment(-0.5, -1.07),
                              child: Container(
                                height: SizeConfig.screenHeight * 0.15,
                                width: SizeConfig.screenWidth * 0.3,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(Assets.imagesJouhdLogo),
                                  fit: BoxFit.fitWidth,
                                )),
                              ),
                            ),
                            Align(
                              alignment: const Alignment(0.6, -1.07),
                              child: Container(
                                height: SizeConfig.screenHeight * 0.15,
                                width: SizeConfig.screenWidth * 0.2,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(Assets.imagesQacLogo),
                                  fit: BoxFit.fitWidth,
                                )),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: (SizeConfig.screenHeight * 0.15),
                          child: Align(
                            alignment: Alignment.center,
                            child: controller.homePageContent.value!
                                        .mainSlider![0].image ==
                                    null
                                ? Container(
                                    height: SizeConfig.screenHeight * 0.8,
                                    width: SizeConfig.screenWidth * 0.8,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      image: AssetImage(Res.leaf),
                                      fit: BoxFit.fitWidth,
                                    )),
                                  )
                                : Container(
                                    height: SizeConfig.screenHeight * 0.3,
                                    width: SizeConfig.screenWidth,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      image: CachedNetworkImageProvider(
                                          controller.homePageContent.value!
                                              .mainSlider![0].image!),
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                          ),
                        ),
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                              height: SizeConfig.screenHeight * 0.4,
                              width: SizeConfig.screenWidth,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    controller.homePageContent.value!
                                            .mainSlider![0].body ??
                                        '',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Obx(() {
                                return controller.flagMK.value == 1
                                    ? Container()
                                    : Container(
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColor.lightPink),
                                        height: SizeConfig.screenWidth > 500
                                            ? SizeConfig.screenHeight * 0.10
                                            : SizeConfig.screenHeight * 0.18,
                                        width: SizeConfig.screenWidth > 500
                                            ? SizeConfig.screenHeight * 0.10
                                            : SizeConfig.screenWidth * 0.18,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: const CircleBorder(),
                                              backgroundColor: Colors.pink,
                                            ),
                                            onPressed: () {
                                              showDialog<void>(
                                                context: context,
                                                barrierDismissible:
                                                    false, // user must tap button!
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    // <-- SEE HERE
                                                    title: const Text(
                                                      'Apply to prize',
                                                      style: TextStyle(),
                                                    ),
                                                    content:
                                                        const SingleChildScrollView(
                                                      child: ListBody(
                                                        children: <Widget>[
                                                          Text(
                                                              'Are you sure want to apply to prize?'),
                                                        ],
                                                      ),
                                                    ),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: const Text('No'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child:
                                                            const Text('Yes'),
                                                        onPressed: () {
                                                          Get.snackbar(
                                                            'Application Done'
                                                                .tr,
                                                            'If you have successfully applied for the competition, you will be contacted as soon as possible'
                                                                .tr,
                                                            icon: const Icon(
                                                              Icons.done,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            snackPosition:
                                                                SnackPosition
                                                                    .TOP,
                                                            backgroundColor:
                                                                AppColor
                                                                    .globalColor,
                                                            borderRadius: 15,
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(15),
                                                            colorText:
                                                                Colors.white,
                                                            duration:
                                                                const Duration(
                                                                    seconds: 4),
                                                            isDismissible: true,
                                                            dismissDirection:
                                                                DismissDirection
                                                                    .horizontal,
                                                            forwardAnimationCurve:
                                                                Curves
                                                                    .easeOutBack,
                                                          );

                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              'Apply to prize'.tr,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize:
                                                      SizeConfig.screenWidth >
                                                              500
                                                          ? 18
                                                          : 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            )),
                                      );
                              }),
                            ),
                            SizedBox(
                              height: SizeConfig.screenHeight * 0.2,
                              width: SizeConfig.screenWidth,
                              child: controller.flagModel.value!.value == 0
                                  ? Container()
                                  : Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.lightPink),
                                          height:
                                              SizeConfig.screenHeight * 0.75,
                                          width: SizeConfig.screenWidth * 0.2,
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColor.lightPink),
                                          height:
                                              SizeConfig.screenHeight * 0.18,
                                          width: SizeConfig.screenWidth * 0.18,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: const CircleBorder(),
                                                backgroundColor: Colors.pink,
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                'Apply'.tr,
                                                style: const TextStyle(
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrl(
                          Uri.parse(controller.homePageContent.value!
                                          .efawateercomLink ==
                                      null ||
                                  controller.homePageContent.value!
                                      .efawateercomLink!.isEmpty
                              ? 'https://www.qac.jo/'
                              : controller
                                  .homePageContent.value!.efawateercomLink!),
                          mode: LaunchMode.externalApplication);
                    },
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Text(
                          'You can buy online cards from here'.tr,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                          ),
                          child: Center(
                            child: Container(
                              height: SizeConfig.screenHeight * 0.15,
                              width: SizeConfig.screenWidth * 0.3,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(Assets.imagesEfawateer),
                                fit: BoxFit.contain,
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 160,
                    child: Center(
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 15,
                              ),
                          itemBuilder: (context, index) => Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: SizeConfig.screenHeight * 0.07,
                                    width: SizeConfig.screenWidth * 0.25,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                          controller.homePageContent.value!
                                              .countsData![index].image!,
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    controller.homePageContent.value!
                                            .countsData![index].title ??
                                        '',
                                    style: const TextStyle(
                                      color: AppColor.kindaRed,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    controller.homePageContent.value!
                                            .countsData![index].count ??
                                        '',
                                    style: const TextStyle(
                                      color: AppColor.kindaRed,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                          itemCount: controller
                              .homePageContent.value!.countsData!.length),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 240,
                    child: Center(
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 15,
                              ),
                          itemBuilder: (context, index) => InkWell(
                                onTap: () async {
                                  await launchUrl(
                                    Uri.parse(controller.homePageContent.value!
                                                    .partnersSlider ==
                                                null ||
                                            controller.homePageContent.value!
                                                .partnersSlider!.isEmpty
                                        ? 'https://www.qac.jo/'
                                        : controller.homePageContent.value!
                                            .partnersSlider![index].link!),
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            controller.homePageContent.value!
                                                .partnersSlider![index].image!,
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      controller.homePageContent.value!
                                              .partnersSlider![index].title ??
                                          '',
                                      style: const TextStyle(
                                        color: AppColor.kindaRed,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          itemCount: controller
                              .homePageContent.value!.partnersSlider!.length),
                    ),
                  ),
                ],
              );
      }),
      // bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
