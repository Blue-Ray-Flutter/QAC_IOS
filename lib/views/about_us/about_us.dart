import 'package:flutter/material.dart';

import '../../shared/components/card_view_container/card_view.dart';
import 'model/about_us_model.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

itemCount: 6,
      itemBuilder:
(context, index) => ColoredCardGrid(
  card:
CardViewModel(
  title: 'About Us',
  color: Colors.blue,
  icon: Icon(Icons.add) ,
  ),




  )







    );
  }
}
