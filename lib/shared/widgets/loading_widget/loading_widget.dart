import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:qac/shared/components/constants/style/color.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.flickr(
        size: 50,
        leftDotColor: AppColor.globalColor,
        rightDotColor: AppColor.kindaRed,
      ),
    );
  }
}
