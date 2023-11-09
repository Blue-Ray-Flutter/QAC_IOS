import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../shared/components/constants/style/color.dart';
import '../../../../shared/widgets/loading_widget/loading_widget.dart';

class MissionWebView extends StatefulWidget {
  const MissionWebView({Key? key}) : super(key: key);

  @override
  _MissionWebViewState createState() => _MissionWebViewState();
}

class _MissionWebViewState extends State<MissionWebView> {
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
            'Our Mission'.tr,
          ),
        ),
        body: SafeArea(
          child: IndexedStack(index: position, children: <Widget>[
            WebView(
              initialUrl: 'https://qac.jo/ar/node/142',
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
            const LoadingWidget()
          ]),
        ));
  }
}
