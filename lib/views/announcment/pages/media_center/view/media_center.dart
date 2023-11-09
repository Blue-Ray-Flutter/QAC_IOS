import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/api/repo/http_repo.dart';
import 'package:qac/api/repo/http_repo_implementaion.dart';
import 'package:qac/shared/widgets/loading_widget/loading_widget.dart';
import 'package:qac/views/announcment/pages/media_center/model/media_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../../shared/components/constants/style/color.dart';
import '../../../../../shared/widgets/images_widget/images_widget.dart';

class MediaCenterWebView extends StatefulWidget {
  const MediaCenterWebView({Key? key}) : super(key: key);

  @override
  _MediaCenterWebViewState createState() => _MediaCenterWebViewState();
}

class _MediaCenterWebViewState extends State<MediaCenterWebView> {
  int position = 1;
  int index = 0;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.globalColor,
          centerTitle: true,
          title: Text(
            'Printed Media'.tr,
          ),
        ),
        body: SafeArea(
            child: FutureBuilder<MediaModel?>(
                future: getMedia(),
                builder: (BuildContext context,
                    AsyncSnapshot<MediaModel?> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return ListView.separated(
                      padding: const EdgeInsets.all(
                        5,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        Color color;
                        switch (index % 10) {
                          case 0:
                            color = AppColor.purpleBanner;
                            break;
                          case 1:
                            color = AppColor.lightPink;
                            break;
                          case 2:
                            color = AppColor.orangeBanner;
                            break;
                          case 3:
                            color = AppColor.darkRedBanner;
                            break;
                          case 4:
                            color = AppColor.blueBanner;
                            break;
                          default:
                            color = Colors.black;
                        }
                        return ImagesWidget(
                          color: color,
                          imgUrl:
                              snapshot.data!.data!.images![index].toString(),
                          //'https://cdn.getyourguide.com/img/location/5c6177ab377bf.jpeg/88.jpg',
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 5,
                      ),
                      itemCount: snapshot.data!.data!.images!.length,
                    );
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return LoadingWidget();
                  }
                  return Center(
                      child: Text(
                    'Something went wrong'.tr,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 23,
                    ),
                  ));
                })));
  }

  Future<MediaModel?> getMedia() async {
    HttpRepository httpRepository = HttpRepositroyImpl();

    late Rx<Response?> getMediaResponse = Rx<Response?>(null);
    MediaModel? mediaModel = MediaModel();

    try {
      getMediaResponse.value = await httpRepository.getMedia(lang: 'ar');

      if (getMediaResponse.value == null) {
        return null;
      }
      mediaModel = MediaModel.fromJson(getMediaResponse.value!.body);
      return mediaModel;
    } catch (e) {
      Get.snackbar(
        'Media'.tr,
        'Something Went Wrong'.tr,
        icon: const Icon(
          Icons.warning,
          color: Colors.white,
        ),
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColor.globalColor,
        borderRadius: 15,
        margin: const EdgeInsets.all(15),
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        forwardAnimationCurve: Curves.easeInCirc,
      );
    }
    return null;
  }
}
