import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../shared/components/constants/style/color.dart';

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
        body: SafeArea(
          child: IndexedStack(index: position, children: <Widget>[
            WebView(
              initialUrl: 'https://www.qac.jo/ar/media-center/news',
              javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (value) {
                setState(() {
                  position = 1;
                });
              },
              onPageFinished: (value) {
                setState(() {
                  position = 0;
                });
              },
            ),
            const Center(
              child: CircularProgressIndicator(
                color: AppColor.darkRedBanner,
              ),
            ),
          ]),
        ));
  }
}
