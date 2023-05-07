import 'package:flutter/material.dart';

import '../constants/style/color.dart';

class BottomAsABody extends StatelessWidget {
  const BottomAsABody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         alignment: Alignment.bottomCenter,
        children: [

        Container(),

          Container(
            height: 120,
            decoration:  BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black12,
              //     blurRadius: 10,
              //     spreadRadius: 1,
              //   ),
              // ],
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
  padding: const EdgeInsets.symmetric(horizontal: 8),
  physics: ScrollPhysics(
  parent:NeverScrollableScrollPhysics() ,
  ),
              children: [
                Expanded(child: _buildBottomNavItem(Icons.home_outlined, 'Home'),),
                Expanded(child: _buildBottomNavItem(Icons.favorite, 'Favorites'),),
                Expanded(child: _buildBottomNavItem(Icons.add_circle_outline, 'add'),),
                Expanded(child: _buildBottomNavItem(Icons.mail_outline_rounded, 'Profile'),),
                Expanded(child: _buildBottomNavItem(Icons.menu_book_outlined, 'face'),),




              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData iconData, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), backgroundColor: Colors.white,
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {  },
              child: CircleAvatar
                (radius: 20,
                child: Icon(
                  iconData,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 3),
            Text(''),
          ],
        ),
      ),
    );
  }
}
