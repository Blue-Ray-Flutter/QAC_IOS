import 'package:adobe/shared/components/constants/style/color.dart';
import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPressed,
    required this.text,
    this.textSize = 15,
    this.icon,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 60,
    this.background = AppColor.globalColor,
    this.isUpperCase = false,
    this.radius = 14,
    this.withIcon = false,
    this.isGoogle = false,
    this.colorIcon = Colors.white,
    this.borderColor = AppColor.globalColor,
    this.borderWidth = 0.4,
  }) : super(key: key);

  final double width;
  final double height;
  final Color background;
  final Color borderColor;
  final bool isUpperCase;
  final double radius;
  final Function() onPressed;
  final String text;
  final bool withIcon;
  final double textSize;
  final Color textColor;
  final bool isGoogle;
  final IconData? icon;
  final Color colorIcon;
  final double borderWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            onTap: onPressed,
            child: withIcon
                ? Center(
              child: ListTile(
                title: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                  ),
                ),
                leading: Icon(
                  icon,
                  color: colorIcon,
                ),
              ),
            )
                : Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                ),
              ),
            )),
      ),
    );
  }
}
