import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController{

  MainPageController();
  late PageController pageController;
  RxInt currentIndex = 0.obs ;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }


}