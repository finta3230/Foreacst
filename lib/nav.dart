import 'package:flutter/material.dart';
import 'today.dart';
import 'forecast.dart';
import 'custom_icons/meteo_icons_icons.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentIndex = 0;
  final screens = [
    TodayPage(),
    ForecastPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        iconSize: 24,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(MeteoIcons.sun),
              label: 'Today',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(MeteoIcons.cloud_sun),
              label: 'Forecast',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
