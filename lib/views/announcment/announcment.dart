import 'package:adobe/shared/components/card_view_container/card_view.dart';
import 'package:adobe/shared/components/constants/constant_data/constant_data.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  // static const List<SvgPicture> _icons = [
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ClickableCard(
            onPressed: moreItemList[index].onPressed,
            svg: mediaCenter[index].svg,
            color: mediaCenter[index].color,
            text: mediaCenter[index].text,
          );
        },
        itemCount: mediaCenter.length,
      ),
    );
  }
}
