import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../shared/components/constants/style/color.dart';

class AudiblesWebView extends StatefulWidget {
  AudiblesWebView({Key? key}) : super(key: key);

  @override
  _AudiblesWebViewState createState() => _AudiblesWebViewState();
}

class _AudiblesWebViewState extends State<AudiblesWebView> {
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
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     'more.text',
        //   ),
        // ),
        body: SafeArea(
      child: IndexedStack(index: position, children: <Widget>[
        WebView(
          initialUrl: 'https://www.qac.jo/ar/audio',
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
        Container(
          child: const Center(
            child: CircularProgressIndicator(
              color: AppColor.darkRedBanner,
            ),
          ),
        ),
      ]),
    ));
  }
}