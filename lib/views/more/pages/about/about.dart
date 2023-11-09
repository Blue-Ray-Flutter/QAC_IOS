import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../shared/components/constants/style/color.dart';
import '../../../../shared/widgets/loading_widget/loading_widget.dart';

class AboutUsWebView extends StatefulWidget {
  AboutUsWebView({Key? key}) : super(key: key);

  @override
  _AboutUsWebViewState createState() => _AboutUsWebViewState();
}

class _AboutUsWebViewState extends State<AboutUsWebView> {
  int position = 1;
  int index = 0;
  // MoreItemModel more = MoreItemModel();

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
            'About Us'.tr,
          ),
        ),
        body: SafeArea(
          child: IndexedStack(index: position, children: <Widget>[
            WebView(
              initialUrl: 'https://qac.jo/ar/about-us',
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
            const LoadingWidget(),
          ]),
        ));
  }
}
