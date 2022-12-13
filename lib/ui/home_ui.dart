import 'package:bmi_calculator/widgets/custom_container.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: const [
                CustomContainer(genderText: 'MalE'),
                SizedBox(
                  width: 10,
                ),
                CustomContainer(genderText: 'Female'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
