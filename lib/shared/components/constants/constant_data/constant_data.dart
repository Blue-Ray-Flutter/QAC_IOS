import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../res.dart';
import '../../../../views/more_item/model/more_item_model.dart';
import '../style/color.dart';

List<MoreItemModel> moreItemList = [
  MoreItemModel(
    svg: Res.infobook,
    onPressed: () {},
    color: AppColor.blueBanner,
    text: 'About Us',
    height: 300,
    width: 300,
    icon: Icons.add,
  ),
  MoreItemModel(
    svg: Res.utils,
    onPressed: () {},
    color: AppColor.purpleBanner,
    text: ' Our Utilities',
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.vision,
    onPressed: () {},
    color: AppColor.orangeBanner,
    text: ' Our Vision',
    height: 250,
    width: 250,
  ),
  MoreItemModel(
    svg: Res.mision,
    onPressed: () {},
    color: AppColor.greenBanner,
    text: ' Our Mission',
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.commities,
    onPressed: () {},
    color: AppColor.darkRedBanner,
    text: 'Committees',
    height: 300,
    width: 300,
  ),
];
List<MoreItemModel> mediaCenter =[

  MoreItemModel(
    svg: Res.printable,
    onPressed: () {},
    color: AppColor.blueBanner,
    text: 'Printed Media',
    height: 300,
    width: 300,
    icon: Icons.add,
  ),
  MoreItemModel(
    svg: Res.news,
    onPressed: () {},
    color: AppColor.purpleBanner,
    text: 'News',
    height: 300,
    width: 300,
  ),
  MoreItemModel(
    svg: Res.video,
    onPressed: () {},
    color:AppColor.orangeBanner,
    text: 'Videos Gallery ',
    height: 250,
    width: 250,
  ),

  MoreItemModel(
    svg: Res.audio,
    onPressed: () {},
    color: AppColor.greenBanner,
    text: 'Audibles',
    height: 300,
    width: 300,
  ),
];

int indexNav = 0;
