import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    this.hor,
    this.ver,
    this.genderText,
    Key? key,
  }) : super(key: key);
  final String? genderText;
  final double? hor;
  final double? ver;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: hor!,
        vertical: ver!,
      ),
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
