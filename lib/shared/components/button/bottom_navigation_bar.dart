import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<IconData> _icons = [

    Icons.home,
    Icons.search,
    Icons.library_music,
    Icons.favorite,
    Icons.settings,

  ];

  static const List<String> _labels = [
    'Home',
    'Search',
    'Library',
    'Favorites',
    'Settings',
  ];

  static const List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.orange,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      items: List.generate(
        _icons.length,
            (index) => BottomNavigationBarItem(
          icon: Icon(
            _icons[index],
            color: _colors[index],
          ),
          label: _labels[index],
          backgroundColor: _colors[index],
        ),
      ),
    );
  }
}
