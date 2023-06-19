import 'package:flutter/material.dart';

class ClickableCard extends StatelessWidget {
  const ClickableCard({
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
  final String? svg;
  final Function() onPressed;
  final Color? color;
  final String? text;
  final Image? image;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              flex: 3,
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    Text(
                      text!,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ])),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8.0, top: 3),
                child: Image.asset(
                  svg!,
                  color: Colors.white.withOpacity(0.4),
                  fit: BoxFit.cover,
                  scale: 0.6,
                  height: 100,
                  width: 40,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
