import 'package:qac/generated/assets.dart';
import 'package:qac/res/assets_res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageDelivered extends StatelessWidget {
  const MessageDelivered({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset(
           Assets.imagesDelivered),
          Text('Your Message has been sent'.tr,style: const TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 25
         ),)
       ],
      ),
    );
  }
}
