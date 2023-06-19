import 'package:flutter/material.dart';


Widget buildBottomNavItem({
  required IconData iconData,
  required void Function() onPressed,
  required Color activeColor,
  required Color activeIconColor,
  required String name,

  // required  String label,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        SizedBox(
          height: 70,
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
        const SizedBox(height: 1,),
        Text(name,
        style:  TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,

          color: activeColor,

        ),),
      ],
    ),
  );
}
