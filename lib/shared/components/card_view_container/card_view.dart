import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClickableCard extends StatelessWidget {
  const ClickableCard(
      {
    Key? key,
        this.svg,
     this.height,
     this.width,

    required this.onPressed,
     this.color,
     this.text,
      this.image,
     this.icon,
  }) : super(key: key);
  final double? height;
  final double? width;
final SvgPicture? svg;
  final Function() onPressed;
  final Color? color;
  final String? text;
  final Image? image;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,

      ),
      child: InkWell(
        onTap:onPressed,
        child: Card(
          child: Row(
            children: [

              Column(
                children: [
                  svg??Icon(Icons.error_outline_sharp),

                ],
              ),
              Column(
                children: [
                  Text(text??''),

                ],
              ),
            ],
          ),
        ),
      ),
    )
      ;
  }
}
