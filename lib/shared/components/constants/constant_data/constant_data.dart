import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../views/about_us/model/more_item_model.dart';

List<MoreItemModel> moreItemList = [
  MoreItemModel(
    svg: SvgPicture.asset('assets/login.svg'),
    onPressed: () {},
    color: Colors.blue,
    text: 'About Us',
    height: 200,
    width: 200,
    icon: Icons.add,
  ),
  MoreItemModel(
    svg: SvgPicture.asset('assets/login.svg'),
    onPressed: () {},
    color: Colors.purple,
    text: ' Our Utilities',
    height: 200,
    width: 200,
  ),
  MoreItemModel(
    svg: SvgPicture.asset('assets/login.svg'),
    onPressed: () {},
    color: Colors.deepOrange,
    text: ' Our Vision',
    height: 200,
    width: 200,
  ),
  MoreItemModel(
    svg: SvgPicture.asset('assets/login.svg'),
    onPressed: () {},
    color: Colors.green,
    text: ' Our Mission',
    height: 200,
    width: 200,
  ),
  MoreItemModel(
    svg: SvgPicture.asset('assets/login.svg'),
    onPressed: () {},
    color: Colors.pink,
    text: 'Committees',
    height: 200,
    width: 200,
  ),
];

int indexNav = 0;
