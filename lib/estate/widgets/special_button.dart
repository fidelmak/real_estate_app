import 'package:flutter/material.dart';

import '../constants/colors.dart';

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
            primary: EstateColors.primary, // Button color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0), // Border radius
            ),
            minimumSize: Size(200.0, 48.0), // Width and height of the button
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/onboard_one');
          },
          child: Text("Let's Get Started")),
    );
  }
}
