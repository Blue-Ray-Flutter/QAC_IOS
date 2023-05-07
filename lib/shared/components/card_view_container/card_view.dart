import 'package:adobe/res.dart';
import 'package:adobe/views/about_us/model/about_us_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColoredCardGrid extends StatelessWidget {
  final CardViewModel card;


  const ColoredCardGrid({Key? key,  required this.card}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(right: 20, left: 20,top: 3,bottom: 3 ),
      child: Container(
      height: 120,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), color: card.color),

      child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Text(
      card.title,
      style: const TextStyle(color: Colors.white),
      ),



  ],
  ),
  Stack(

    children:[
      Align(
        alignment: Alignment.topLeft,
        child: Column(

    children: [
    SvgPicture.asset(
    Res.login,
    height: 70,

    ),
    ],
    ),
      ),]
  )
  ],
  ),
  ),
  ),
    );
  }
}
