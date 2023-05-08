import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoreItemModel {
  final double height;
  final double width;
  final Image? image;
  final SvgPicture svg;
  final IconData? icon;
  final Function()onPressed;
  final Color color;
  final String text;

  MoreItemModel({
   required this.svg,
   required  this.onPressed,
    required this.color,
   required  this.text,
    required this.height,
    required this.width,
     this.image,
    this.icon,
  });
}
