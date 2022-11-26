import 'package:flutter/material.dart';

import 'ui/home_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
    );
  }
}
// pages, ui, screen, view

