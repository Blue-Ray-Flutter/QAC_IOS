import 'package:flutter/material.dart';


Widget buildBottomNavItem({
  required IconData iconData,
  required void Function() onPressed,
  required Color activeColor,
  required Color activeIconColor,

  // required  String label,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: SizedBox(
      height: 60,
      width: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: activeColor,
          padding: const EdgeInsets.all(10),
        ),
        onPressed: onPressed,
        child: Icon(
          iconData,
          color: activeIconColor,
          size: 30,
        ),
      ),
    ),
  );
}
