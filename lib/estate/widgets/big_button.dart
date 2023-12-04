import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final Text label;
  final Function() goTo;
  final Color bgColor;

  BigButton({
    Key? key,
    required this.label,
    required this.goTo,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.6,
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        onPressed: goTo,
        child: label,
      ),
    );
  }
}
