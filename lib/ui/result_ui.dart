import 'package:bmi_calculator/constants/colors/app_colors.dart';
import 'package:bmi_calculator/constants/text_styles/app_text_styles.dart';
import 'package:bmi_calculator/widgets/calculate_bottom_widget.dart';
import 'package:flutter/material.dart';

import '../data/local_data/bmi_calculator_data.dart';

class ResultUi extends StatelessWidget {
  const ResultUi({this.weight, this.height, super.key});

  final double? weight;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final double bmi = BmiCalcultorData.calculateBmi(weight!, height!);
    return Scaffold(
        backgroundColor: const Color(0xff221936),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (() => Navigator.pop(context)),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const Text('Result', style: AppTextStyles.white45w900),
              Center(
                child: Container(
                  width: 350,
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff0A001F),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        BmiCalcultorData.bmiResult(bmi),
                        style: AppTextStyles.green30w400,
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: AppTextStyles.white100w900,
                      ),
                      Text(
                        BmiCalcultorData.getDescroption(bmi),
                        textAlign: TextAlign.center,
                        style: AppTextStyles.white20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CalculateBottomWidget(
          text: 'Kaira Sana',
          onTap: () {
            Navigator.pop(context);
          },
        ));
  }
}
