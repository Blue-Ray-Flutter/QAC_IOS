import 'package:adobe/shared/components/button/bottom_navigation_bar.dart';
import 'package:adobe/shared/components/button/button.dart';
import 'package:adobe/shared/components/gap/gap.dart';
import 'package:adobe/views/main_page/controller/main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetWidget<MainPageController>{
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox.expand(
        child: PageView(
          physics: const ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),

          ),
          controller:  controller.pageController,
          children: [
            Container(
              child:
             CircleAvatar(
               backgroundColor: Colors.red,
               radius: 30,
               child:
               TextButton(onPressed:(){},
               child:const Text('Apply',style:TextStyle(color: Colors.white),)),
             )
            )
          ],
        ),
      ),
          // bottomNavigationBar: MyBottomNavigationBar(),




              ),

      // ListView.separated(
      //
      //   scrollDirection: Axis.horizontal,
      //   shrinkWrap: true,
      //
      //   itemBuilder: (BuildContext context, int index) { return
      //       Padding(
      //         padding: const EdgeInsets.only(bottom: 20,left: 8),
      //         child: Align(
      //           alignment: Alignment.bottomCenter,
      //           child: Container(
      //     height: 60,
      //     width: 60,
      //     decoration: BoxDecoration(
      //           color: Colors.red,
      //           borderRadius: BorderRadius.circular(30),
      //     ),
      //     child: IconButton(onPressed: (){}, icon: const Icon(Icons.add),),
      //
      //
      //   ),
      //         ),
      //       ); },
      //
      //   separatorBuilder: (BuildContext context, int index) {  return const Gap(width: 10,); },
      //   itemCount: 5,
      //
      //
      //
      // ),

          );


  }
}
