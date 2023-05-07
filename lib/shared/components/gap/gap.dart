import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({Key? key, this.height, this.width}) : super(key: key);
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(

      height:
      height ?? 16
    ,
    width: width ?? 0,

      );
  }
}