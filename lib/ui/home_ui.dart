import 'dart:developer';

import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/enum/gender_enum.dart';
import 'package:bmi_calculator/ui/result_ui.dart';
import 'package:bmi_calculator/widgets/calculate_bottom_widget.dart';
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
  int age = 25;
  GenderEnum male = GenderEnum.male;
  GenderEnum female = GenderEnum.female;
  Color maleSelected = AppColors.inactiveColor;
  Color femaleSelected = AppColors.inactiveColor;

  chooseGender(GenderEnum genderUserChoose) {
    if (genderUserChoose == male) {
      maleSelected = AppColors.activeColor;
      femaleSelected = AppColors.inactiveColor;
    }
    if (genderUserChoose == female) {
      femaleSelected = AppColors.activeColor;
      maleSelected = AppColors.inactiveColor;
    }
    setState(() {});
  }

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainer(
                  color: maleSelected,
                  dynamicChoose: () {
                    chooseGender(male);
                    log('Knopka');
                  },
                  dynamicIcon: Icons.male,
                  genderText: 'MalE',
                  ver: 30,
                  hor: 10,
                ),
                CustomContainer(
                  dynamicChoose: () => chooseGender(female),
                  color: femaleSelected,
                  dynamicIcon: Icons.female,
                  genderText: 'Female',
                  ver: 30,
                  hor: 10,
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
                    style: const TextStyle(fontSize: 50, color: Colors.white),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeightAgeWidget(
                    san: weight.toString(),
                    text: 'Weight',
                    onMinus: () {
                      setState(() {
                        weight--;
                      });
                    },
                    onPlus: () {
                      setState(() {
                        weight = weight + 1;
                      });
                    }),
                WeightAgeWidget(
                    onMinus: () {
                      setState(() {
                        age--;
                      });
                    },
                    san: age.toString(),
                    text: 'Age',
                    onPlus: () {
                      setState(() {
                        age = age + 1;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateBottomWidget(
        text: 'Sana',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => ResultUi(
                      height: sliderHeight,
                      weight: weight.toDouble(),
                    ))),
          );
        },
      ),
    );
  }
}
