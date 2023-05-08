import 'package:adobe/shared/components/card_view_container/card_view.dart';
import 'package:adobe/shared/components/constants/constant_data/constant_data.dart';
import 'package:adobe/shared/components/widget/size_config.dart';
import 'package:adobe/views/about_us/model/more_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);



  // static const List<SvgPicture> _icons = [
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return ClickableCard(onPressed:moreItemList[index].onPressed,
      svg: moreItemList[index].svg,
      color: moreItemList[index].color,
      text: moreItemList[index].text,

      );


    },



    );
  }
}
