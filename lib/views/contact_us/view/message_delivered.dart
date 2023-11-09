import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qac/generated/assets.dart';
import 'package:qac/shared/components/constants/style/color.dart';

class MessageDelivered extends StatelessWidget {
  const MessageDelivered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.globalColor,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesDelivered),
          Text(
            'Your Message has been sent'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )
        ],
      ),
    );
  }
}
