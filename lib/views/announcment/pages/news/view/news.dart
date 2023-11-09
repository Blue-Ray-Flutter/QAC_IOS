import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/api/repo/http_repo.dart';
import 'package:qac/api/repo/http_repo_implementaion.dart';
import 'package:qac/shared/widgets/loading_widget/loading_widget.dart';
import 'package:qac/shared/widgets/news_widget/news_widget.dart';
import 'package:qac/views/announcment/pages/news/model/news_model.dart';
import 'package:qac/views/announcment/pages/news/view/news_article.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../../../../../shared/components/constants/style/color.dart';

class NewsWebView extends StatefulWidget {
  const NewsWebView({Key? key}) : super(key: key);

  @override
  _NewsWebViewState createState() => _NewsWebViewState();
}

class _NewsWebViewState extends State<NewsWebView> {
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
            'News'.tr,
          ),
        ),
        body: FutureBuilder<NewsModel?>(
            future: getNews(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return SafeArea(
                  child: ListView.separated(
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
                        case 5:
                          color = AppColor.purpleBanner;
                          break;
                        case 6:
                          color = AppColor.lightPink;
                          break;
                        case 7:
                          color = AppColor.orangeBanner;
                          break;
                        case 8:
                          color = AppColor.darkRedBanner;
                          break;
                        case 9:
                          color = AppColor.blueBanner;
                          break;
                        case 10:
                          color = AppColor.purpleBanner;
                          break;

                        default:
                          color = Colors.white;
                      }
                      return NewsCard(
                        color: color,
                        borderColor: color,
                        onTap: () {
                          Get.to(
                            () => NewsArticlePage(
                                nid: snapshot.data!.data!.news![index].nid
                                    .toString()),
                          );
                        },
                        imgUrl: snapshot.data!.data!.news![index].images![0]
                            .toString(),
                        date: snapshot.data!.data!.news![index].date ?? '',
                        title: snapshot.data!.data!.news![index].title ?? '',
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                    itemCount: snapshot.data!.data!.news!.length,
                  ),
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
            }));
  }

  Future<NewsModel?> getNews() async {
    HttpRepository httpRepository = HttpRepositroyImpl();

    late Rx<Response?> getNewsResponse = Rx<Response?>(null);
    NewsModel? newsModel = NewsModel();

    try {
      getNewsResponse.value = await httpRepository.getNews();
      if (getNewsResponse.value == null) {
        return null;
      }
      newsModel = NewsModel.fromJson(getNewsResponse.value!.body);
      return newsModel;
    } catch (e) {
      Get.snackbar(
        'News'.tr,
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
