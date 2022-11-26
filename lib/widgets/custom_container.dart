import 'package:flutter/material.dart';

class CustomCon extends StatelessWidget {
  final void Function()? onTap;
  final String? age;
  const CustomCon({this.onTap, this.age, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color: Color(0xff2C2C2C), shape: BoxShape.circle),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    splashColor: Colors.red,
                    onTap: onTap,
                    //  () {
                    //   setState(() {});
                    //   age--;
                    // },
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
                    color: Color(0xff2C2C2C), shape: BoxShape.circle),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    customBorder: const CircleBorder(),
                    splashColor: Colors.red,
                    onTap: onTap,
                    //  () {
                    //   setState(() {});
                    //   age--;
                    // },
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
    );
  }
}
