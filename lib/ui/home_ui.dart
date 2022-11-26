import 'dart:developer';

import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../enum/gender_enum.dart';

enum Toyota {
  Corolla, // 0
  Camry, // 1
  Window, // 2
}

int toyotaCorolla = 0;
int toyotaCamry = 1;
int toyotaWindow = 2;
Color activeColor = Colors.blue;
Color inactiveColor = Colors.grey;

class HomeUi extends StatefulWidget {
  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;
  void updateColor(GenderEnum tandalganGender) {
    if (tandalganGender == GenderEnum.male) {
      if (maleColor == inactiveColor) {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      } else {
        maleColor = inactiveColor;
      }
    }
    if (tandalganGender == GenderEnum.female) {
      if (femaleColor == inactiveColor) {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      } else {
        femaleColor = inactiveColor;
      }
    }
    setState(() {});
  }

  double uchurdagyDanniy = 160;
  int age = 25;
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => updateColor(GenderEnum.male),
                  child: Container(
                    decoration: BoxDecoration(
                        color: maleColor,
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.male,
                          size: 90,
                          color: Colors.white,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 100,
                // ),
                InkWell(
                  onTap: () {
                    updateColor(GenderEnum.female);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: femaleColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.female,
                          size: 90,
                          color: Colors.white,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(40),
              color: const Color(0xff1D1E32),
              child: Column(
                children: [
                  const Text(
                    'Height',
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        uchurdagyDanniy.toStringAsFixed(0),
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      // activeTickMarkColor: Colors.grey,
                      // inactiveTickMarkColor: Colors.white,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      overlayColor: Colors.green,
                      thumbColor: Colors.red,
                    ),
                    child: Slider(
                        max: 220,
                        min: 60,
                        value: uchurdagyDanniy,
                        onChanged: (adamdynTandoosu) {
                          uchurdagyDanniy = adamdynTandoosu;
                          setState(() {});
                          log('uchurdagyDanniy ===> $uchurdagyDanniy');
                        }),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff4C4F5D),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        age.toString(),
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            // margin: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                                color: Color(0xff2C2C2C),
                                shape: BoxShape.circle),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: const CircleBorder(),
                                splashColor: Colors.red,
                                onTap: () {
                                  setState(() {});
                                  age--;
                                },
                                child: const Icon(
                                  Icons.remove,
                                  size: 54,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            // margin: const EdgeInsets.all(5.0),
                            decoration: const BoxDecoration(
                                color: Color(0xff2C2C2C),
                                shape: BoxShape.circle),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                customBorder: const CircleBorder(),
                                splashColor: Colors.red,
                                onTap: () {
                                  setState(() {});
                                  age--;
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 54,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const CustomCon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
