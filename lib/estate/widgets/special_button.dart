import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/onboard.dart';

class SpecialBtn extends StatelessWidget {
  const SpecialBtn({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.6,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: EstateColors.icox, // Button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0), // Border radius
            ),
            minimumSize: Size(200.0, 48.0), // Width and height of the button
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnboardOne(),
              ),
            );
          },
          child: Text(
            "Let's Get Started",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
