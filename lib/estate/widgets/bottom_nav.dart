import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      // Wrap with a Container to provide constraints
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
          Icon(
            Icons.explore,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
          Icon(
            Icons.verified_user_outlined,
            color: Colors.white,
            // Add other properties as needed, e.g., size
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttomTitle});
  final VoidCallback onTap;
  final String buttomTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttomTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        child: Icon(icon),
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xff4c4f5e));
  }
}
