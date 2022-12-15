import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:bmi_calculator/widgets/weight_age_widget.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  double sliderHeight = 80;
  int weight = 50;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomContainer(
                genderText: 'MalE',
                ver: 30,
                hor: 40,
              ),
              SizedBox(
                width: 10,
              ),
              CustomContainer(
                genderText: 'Female',
                ver: 30,
                hor: 20,
              ),
            ],
          ),
          Container(
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.teal,
            ),
            child: Column(
              children: [
                const Text(
                  'Height',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  sliderHeight.toStringAsFixed(0),
                  style: const TextStyle(fontSize: 70, color: Colors.white),
                ),
                Slider(
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  thumbColor: Colors.green,
                  max: 200,
                  value: sliderHeight,
                  onChanged: (adamBasti) {
                    setState(() {
                      sliderHeight = adamBasti;
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              WeightAgeWidget(
                  san: weight.toString(),
                  text: 'Weight',
                  onTap: () {
                    setState(() {
                      weight = weight + 1;
                    });
                  }),
              WeightAgeWidget(
                  san: weight.toString(),
                  text: 'Age',
                  onTap: () {
                    setState(() {
                      weight = weight + 1;
                    });
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
