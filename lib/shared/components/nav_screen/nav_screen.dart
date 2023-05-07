import 'package:adobe/shared/components/button/elevated_button.dart';
import 'package:adobe/shared/components/nav_screen/nav_screen_model/nav_screen_model.dart';
import 'package:adobe/views/main_page/main_page.dart';
import 'package:flutter/material.dart';

import '../../../views/about_us/model/about_us_model.dart';
import '../button/button.dart';
import '../card_view_container/card_view.dart';

class CombinedNavBodyView extends StatefulWidget {
  const CombinedNavBodyView({Key? key}) : super(key: key);

  @override
  State<CombinedNavBodyView> createState() => _CombinedNavBodyViewState();
}

class _CombinedNavBodyViewState extends State<CombinedNavBodyView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [


        navScreens[_selectedIndex+3].widget,
        navScreens[_selectedIndex].navBarItem==NavBarItem.aboutUs?ColoredCardGrid(
          card: CardViewModel(
            title: 'About Us',
            color: Colors.blue,
            icon: Icon(Icons.add) ,
          ),
        ):Container(),
        //
        // DefaultElevatedButton(
        //     child: Icon(Icons.add), onPressed: (){}, shape: const CircleBorder(
        //
        // ), backgroundColor: Colors.red, ),

      ],
    ));
  }
}
