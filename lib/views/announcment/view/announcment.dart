import 'package:adobe/shared/components/card_view_container/clickable_card_view.dart';
import 'package:adobe/shared/components/constants/constant_data/constant_data.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class Announcement extends StatelessWidget {
  const Announcement({Key? key}) : super(key: key);

  // static const List<SvgPicture> _icons = [
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ClickableCard(
            onPressed: mediaCenterList[index].onPressed,
            svg: mediaCenterList[index].svg,
            color: mediaCenterList[index].color,
            text: mediaCenterList[index].text,
          );
        },
        itemCount: mediaCenterList.length,
      ),
    );
  }
}
