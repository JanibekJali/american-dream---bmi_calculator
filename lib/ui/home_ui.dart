import 'dart:developer';

import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
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
                // const SizedBox(
                //   width: 100,
                // ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
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
                  decoration: BoxDecoration(
                      color: Colors.teal,
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
                // const SizedBox(
                //   width: 100,
                // ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.all(40),
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
                          InkWell(
                            splashColor: Colors.red,
                            onTap: () {
                              setState(() {});
                              age--;
                            },
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4C505E),
                              child: Icon(
                                Icons.remove,
                                color: Color(0xffffffff),
                                size: 35,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            splashColor: Colors.red,
                            onTap: () {
                              setState(() {});
                              age++;
                            },
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xff4C505E),
                              child: Icon(
                                Icons.add,
                                color: Color(0xffffffff),
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
