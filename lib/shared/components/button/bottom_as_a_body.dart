import 'package:flutter/material.dart';

// class BottomAsABody extends StatelessWidget {
//   const BottomAsABody({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
// //
// // Container(
// //   child: ,
// // ),
//           Container(
//             height: 120,
//             decoration: BoxDecoration(
//               // boxShadow: [
//               //   BoxShadow(
//               //     color: Colors.black12,
//               //     blurRadius: 10,
//               //     spreadRadius: 1,
//               //   ),
//               // ],
//               color: Colors.white.withOpacity(0.1),
//               borderRadius: const BorderRadius.all(Radius.circular(100)),
//             ),
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               padding: const EdgeInsets.symmetric(horizontal: 8),
//               physics: const ScrollPhysics(
//                 parent: NeverScrollableScrollPhysics(),
//               ),
//               children: [
//                 Expanded(
//                   child: buildBottomNavItem(
//                       iconData: Icons.home_outlined,
//                       onPressed: () {},
//                       activeColor: Colors.white),
//                 ),
//                 Expanded(
//                   child: buildBottomNavItem(
//                       iconData: Icons.home_outlined,
//                       onPressed: () {},
//                       activeColor: Colors.white),
//                 ),
//                 Expanded(
//                   child: buildBottomNavItem(
//                       iconData: Icons.home_outlined,
//                       onPressed: () {},
//                       activeColor: Colors.white),
//                 ),
//                 Expanded(
//                   child: buildBottomNavItem(
//                       iconData: Icons.home_outlined,
//                       onPressed: () {},
//                       activeColor: Colors.white, activeIconColor: null),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

Widget buildBottomNavItem({
  required IconData iconData,
  required void Function() onPressed,
  required Color activeColor,
  required Color activeIconColor,

  // required  String label,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
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
