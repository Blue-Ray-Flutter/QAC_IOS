import 'package:adobe/shared/components/constants/style/color.dart';
import 'package:flutter/material.dart';

import '../../components/button/bottom_as_a_body.dart';
import '../../components/constants/constant_data/constant_data.dart';
import '../../components/nav_screen/nav_screen_model/nav_screen_model.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({Key? key}) : super(key: key);

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(100)),
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListView.builder(
            itemCount: navScreens.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => buildBottomNavItem(
                activeIconColor:
                    indexNav == index ? Colors.white : Colors.black,
                iconData: navScreens[index].icon,
                onPressed: () {
                  setState(() {
                    indexNav = index;
                  });
                },
                activeColor:
                    indexNav == index ? AppColor.globalColor : Colors.white),

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
          ),
        ),
      ),
      appBar: AppBar(),
      body: navScreens[indexNav].widget,
    );
  }
}
