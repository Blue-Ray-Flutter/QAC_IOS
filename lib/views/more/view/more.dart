import 'package:flutter/material.dart';
import 'package:qac/shared/components/card_view_container/clickable_card_view.dart';
import 'package:qac/shared/components/constants/constant_data/constant_data.dart';

import '../../../main.dart';

class MoreItems extends StatelessWidget {
  const MoreItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
          ),
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
