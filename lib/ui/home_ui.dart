import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E20),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Bmi Calculator',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            color: Colors.teal,
            padding: const EdgeInsets.all(40),
            child: Column(
              children: const [
                Icon(
                  Icons.male,
                  size: 60,
                  color: Colors.white,
                ),
                Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
