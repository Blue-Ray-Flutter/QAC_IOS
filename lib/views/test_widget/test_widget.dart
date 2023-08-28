import 'package:flutter/material.dart';
import 'package:qac/shared/components/constants/style/color.dart';
import 'package:qac/shared/components/widget/size_config.dart';

class TestWidget extends StatelessWidget {
  String name;
  String body;
  String image;
  TestWidget({
    super.key,
    required this.name,
    required this.body,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColor.globalColor[100],
      appBar: AppBar(
        backgroundColor: AppColor.globalColor,
        centerTitle: true,
        title: Text(
          name,
          style: const TextStyle(
            color: AppColor.globalInvertedColor,
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          right: 10,
          left: 10,
        ),
        children: [
          Image(
              height: SizeConfig.screenHeight * 0.3,
              width: SizeConfig.screenWidth,
              image: AssetImage(image)),
          const SizedBox(
            height: 25,
          ),
          Text(
            body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
