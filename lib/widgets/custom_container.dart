import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    this.genderText,
    Key? key,
  }) : super(key: key);
  final String? genderText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const Icon(
            Icons.male,
            size: 60,
            color: Colors.white,
          ),
          Text(
            genderText!.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
