import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:forecast_app/nav.dart';

void showLayoutGuidelines() {
  debugPaintSizeEnabled = false;
}

void main() {
  showLayoutGuidelines();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Forecast Application', home: Nav());
  }
}
