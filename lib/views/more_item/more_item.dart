import 'package:adobe/shared/components/card_view_container/card_view.dart';
import 'package:adobe/shared/components/constants/constant_data/constant_data.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  // static const List<SvgPicture> _icons = [
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ClickableCard(
              onPressed: moreItemList[index].onPressed,
              svg: moreItemList[index].svg,
              color: moreItemList[index].color,
              text: moreItemList[index].text,
            );
          },
          itemCount: moreItemList.length,
        ),
      ),
    );
  }
}
