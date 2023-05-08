import 'package:flutter/material.dart';

import '../../components/button/bottom_as_a_body.dart';
import '../../components/nav_screen/nav_screen_model/nav_screen_model.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Container(
        height: 120,
        decoration:  BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(100)),
        ),
        child: Align(
          alignment: Alignment.center,
          child:ListView.builder(
            itemCount: navScreens.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index)=>Container(),

          // child: ListView(
          //   scrollDirection: Axis.horizontal,
          //   padding: const EdgeInsets.symmetric(horizontal: 8),
          //   physics: const ScrollPhysics(
          //     parent:NeverScrollableScrollPhysics() ,
          //   ),
          //   children: [
          //     buildBottomNavItem(iconData: Icons.home_outlined, onPressed: () {  }, activeColor: Colors.white),
          //     buildBottomNavItem(iconData: Icons.home_outlined, onPressed: () {  }, activeColor: Colors.white),
          //     buildBottomNavItem(iconData: Icons.home_outlined, onPressed: () {  }, activeColor: Colors.white),
          //     buildBottomNavItem(iconData: Icons.home_outlined, onPressed: () {  }, activeColor: Colors.white),
          //     buildBottomNavItem(iconData: Icons.home_outlined, onPressed: () {  }, activeColor: Colors.white),
          //   ],
          // ),
        ),),
      ),
      appBar: AppBar(),
      body: Stack(
         alignment: Alignment.bottomCenter,
        children: [

          Container(
          ),
          // Container(
          //   height: 120,
          //   decoration:  BoxDecoration(
          //     // boxShadow: [
          //     //   BoxShadow(
          //     //     color: Colors.black12,
          //     //     blurRadius: 10,
          //     //     spreadRadius: 1,
          //     //   ),
          //     // ],
          //     color: Colors.white.withOpacity(0.1),
          //     borderRadius: const BorderRadius.all(Radius.circular(100)),
          //   ),
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     padding: const EdgeInsets.symmetric(horizontal: 8),
          //     physics: const ScrollPhysics(
          //       parent:NeverScrollableScrollPhysics() ,
          //     ),
          //     children: [
          //       Expanded(child: buildBottomNavItem(iconData: Icons.home_outlined),),
          //       Expanded(child: buildBottomNavItem(iconData: Icons.home_outlined),),
          //       Expanded(child: buildBottomNavItem(iconData: Icons.home_outlined),),
          //       Expanded(child: buildBottomNavItem(iconData: Icons.home_outlined),),
          //       Expanded(child: buildBottomNavItem(iconData: Icons.home_outlined),),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
