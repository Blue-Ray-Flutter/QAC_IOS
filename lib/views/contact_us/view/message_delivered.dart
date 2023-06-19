import 'package:adobe/generated/assets.dart';
import 'package:adobe/res/assets_res.dart';
import 'package:flutter/material.dart';

class MessageDelivered extends StatelessWidget {
  const MessageDelivered({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset(
           Assets.imagesDelivered),
         const Text('Your Message has been sent',style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 25
         ),)
       ],
      ),
    );
  }
}
