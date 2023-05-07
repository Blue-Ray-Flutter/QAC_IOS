import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardViewModel   {
  final Color color;
  final String title;
  final Icon icon;

  CardViewModel({
    required this.color,
    required this.title,
    required this.icon,
  });

  static const List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.orange,
  ];
  static List<CardViewModel> getCards() {
    return [
      CardViewModel(
        color: _colors[0],
        title: "Card 1",
        icon: Icon(Icons.ac_unit),

      ),
      CardViewModel(
        color: _colors[1],
        title: "Card 2",
        icon: Icon(Icons.access_alarm),

      ),
      CardViewModel(
        color: _colors[2],
        title: "Card 3",
        icon: Icon(Icons.accessibility_new),

      ),
      CardViewModel(
        color: _colors[3],
        title: "Card 4",
        icon: Icon(Icons.account_balance),

      ),
      CardViewModel(
        color: _colors[4],
        title: "Card 5",
        icon: Icon(Icons.ac_unit),

      ),
    ];
  }

}
