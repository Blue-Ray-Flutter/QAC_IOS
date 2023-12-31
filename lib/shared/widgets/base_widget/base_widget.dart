import 'package:qac/shared/components/constants/style/color.dart';
import 'package:qac/shared/components/widget/size_config.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../components/button/bottom_nav_item.dart';
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
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.118,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: const Offset(0, -3))
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: navScreens.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildBottomNavItem(
                          context: context,
                          name: navScreens[index].name,
                          selectedNameColor: indexNav == index
                              ? AppColor.globalColor
                              : Colors.grey[300]!,
                          activeIconColor:
                              indexNav == index ? Colors.white : Colors.black,
                          iconData: navScreens[index].icon,
                          onPressed: () {
                            setState(() {
                              indexNav = index;
                            });
                          },
                          activeColor: indexNav == index
                              ? AppColor.globalColor
                              : Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Stack(
            children: [
              Padding(
                padding: navScreens[indexNav].navBarItem == NavBarItem.home
                    ? const EdgeInsetsDirectional.only(top: 0)
                    : const EdgeInsetsDirectional.only(
                        top: 40,
                        start: 30,
                        end: 30,
                      ),
                child: navScreens[indexNav].widget,
              ),
              navScreens[indexNav].navBarItem == NavBarItem.home
                  ? Container()
                  : SizedBox(
                      height: SizeConfig.screenHeight * 0.065,
                      child: Center(
                        child: AppBar(
                          centerTitle: true,
                          leading: BackButton(
                            onPressed: () {
                              setState(() {
                                indexNav = 1;
                              });
                            },
                            color: Colors.lightBlueAccent,
                          ),
                          title: Text(navScreens[indexNav].name,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              )),
                          backgroundColor: Colors.white,
                          elevation: 1,
                        ),
                      ),
                    )
            ],
          )),
    );
  }
}
