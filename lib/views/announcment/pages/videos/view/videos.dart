import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/api/repo/http_repo.dart';
import 'package:qac/api/repo/http_repo_implementaion.dart';
import 'package:qac/shared/components/constants/style/color.dart';
import 'package:qac/shared/widgets/loading_widget/loading_widget.dart';
import 'package:qac/shared/widgets/video_widget/video_widget.dart';
import 'package:qac/views/announcment/pages/videos/models/video_model.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.globalColor,
        centerTitle: true,
        title: Text(
          'Videos'.tr,
        ),
      ),
      body: FutureBuilder<VideoModel?>(
          future: getVideo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return ListView.separated(
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
                  return VideoPlayerWidget(
                    videoUrl:
                        snapshot.data!.data!.video![index].video![0].toString(),
                    //'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
                    videoTitle: snapshot.data!.data!.video![index].title!,
                    borderColor: color,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 5,
                ),
                itemCount: snapshot.data!.data!.video!.length,
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

  Future<VideoModel?> getVideo() async {
    HttpRepository httpRepository = HttpRepositroyImpl();

    late Rx<Response?> getVideoResponse = Rx<Response?>(null);
    VideoModel? videoModel = VideoModel();

    try {
      getVideoResponse.value = await httpRepository.getVideo();
      if (getVideoResponse.value == null) {
        return null;
      }
      videoModel = VideoModel.fromJson(getVideoResponse.value!.body);
      return videoModel;
    } catch (e) {
      Get.snackbar(
        'Video'.tr,
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
