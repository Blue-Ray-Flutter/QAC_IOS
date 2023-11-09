import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/api/repo/http_repo.dart';
import 'package:qac/api/repo/http_repo_implementaion.dart';
import 'package:qac/shared/widgets/audio_wiget/audio_widget.dart';
import 'package:qac/shared/widgets/loading_widget/loading_widget.dart';
import 'package:qac/views/announcment/pages/audibles/model/audio_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../../../shared/components/constants/style/color.dart';

class AudiblesPage extends StatefulWidget {
  AudiblesPage({Key? key}) : super(key: key);

  @override
  _AudiblesPageState createState() => _AudiblesPageState();
}

class _AudiblesPageState extends State<AudiblesPage> {
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
      body: FutureBuilder<AudioModel?>(
          future: getAudio(),
          builder: (BuildContext context, AsyncSnapshot<AudioModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return SafeArea(
                child: ListView.separated(
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
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AudioPlayerWidget(
                          color: color,
                          audioTitle:
                              snapshot.data!.data!.audio![index].title ?? ' ',
                          audioUrl: snapshot.data!.data!.audio![index].audio![0]
                              .toString(),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 5,
                        ),
                    itemCount: snapshot.data!.data!.audio!.length),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const LoadingWidget();
            }
            return Center(
                child: Text(
              'Something went wrong'.tr,
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 23,
              ),
            ));
          }),
    );
  }

  Future<AudioModel?> getAudio() async {
    HttpRepository httpRepository = HttpRepositroyImpl();

    late Rx<Response?> getAudioResponse = Rx<Response?>(null);
    AudioModel? audioModel = AudioModel();

    try {
      getAudioResponse.value = await httpRepository.getAudio();

      if (getAudioResponse.value == null) {
        return null;
      }
      audioModel = AudioModel.fromJson(getAudioResponse.value!.body);
      return audioModel;
    } catch (e) {
      Get.snackbar(
        'Audio'.tr,
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
      e.printError();
    }
    return null;
  }
}
