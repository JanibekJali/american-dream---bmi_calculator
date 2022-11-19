import 'package:flutter/material.dart';

import 'ui/home_ui.dart';

void main() {
  runApp(Adam());
}

class Adam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUi(),
    );
  }
}
// pages, ui, screen, view

