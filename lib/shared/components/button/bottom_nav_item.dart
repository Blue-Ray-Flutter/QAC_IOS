import 'package:flutter/material.dart';
import 'package:qac/shared/components/widget/size_config.dart';

Widget buildBottomNavItem({
  required IconData iconData,
  required void Function() onPressed,
  required Color activeColor,
  required Color activeIconColor,
  required String name,
  required Color selectedNameColor,
  required BuildContext context,

  // required  String label,
}) {
  SizeConfig().init(context);
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.09,
          width: SizeConfig.screenWidth * 0.15,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: activeColor,
              padding: const EdgeInsets.all(10),
            ),
            onPressed: onPressed,
            child: Center(
              child: Icon(
                iconData,
                color: activeIconColor,
                size: SizeConfig.screenWidth > 500 ? 50 : 30,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            name,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth > 500 ? 20 : 13,
              fontWeight: FontWeight.bold,
              color: selectedNameColor,
            ),
          ),
        ),
      ],
    ),
  );
}
