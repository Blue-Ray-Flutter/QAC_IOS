import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/api/repo/http_repo.dart';
import 'package:qac/api/repo/http_repo_implementaion.dart';
import 'package:qac/shared/components/constants/style/color.dart';
import 'package:qac/shared/widgets/loading_widget/loading_widget.dart';
import 'package:qac/shared/widgets/news_widget/news_article_widget.dart';
import 'package:qac/views/announcment/pages/news/model/news-article_model.dart';

class NewsArticlePage extends StatefulWidget {
  NewsArticlePage({
    Key? key,
    required this.nid,
  }) : super(key: key);

  String? nid;

  @override
  State<NewsArticlePage> createState() => _NewsArticlePageState();
}

class _NewsArticlePageState extends State<NewsArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.globalColor,
        centerTitle: true,
        title: Text(
          'News'.tr,
        ),
      ),
      body: SafeArea(
        child: FutureBuilder<NewsArticleModel?>(
            future: getNewsArticle(nid: widget.nid!),
            builder: (BuildContext context,
                AsyncSnapshot<NewsArticleModel?> snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      NewsArticleWidget(
                        borderColor: AppColor.globalColor,
                        imgUrl: snapshot.data!.data!.news![0].images!,
                        content: snapshot.data!.data!.news![0].body ?? ' ',
                        date: snapshot.data!.data!.news![0].date ?? ' ',
                        title: snapshot.data!.data!.news![0].title ?? ' ',
                      )
                    ]);
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
      ),
    );
  }

  Future<NewsArticleModel?> getNewsArticle({required String nid}) async {
    HttpRepository httpRepository = HttpRepositroyImpl();

    late Rx<Response?> getNewsArticleResponse = Rx<Response?>(null);
    NewsArticleModel newsArticleModel = NewsArticleModel();

    try {
      getNewsArticleResponse.value =
          await httpRepository.getNewsArticle(nid: nid, lang: 'ar');

      if (getNewsArticleResponse.value == null) {
        return null;
      }
      newsArticleModel =
          NewsArticleModel.fromJson(getNewsArticleResponse.value!.body);
      return newsArticleModel;
    } catch (e) {
      Get.snackbar(
        'News Article'.tr,
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
