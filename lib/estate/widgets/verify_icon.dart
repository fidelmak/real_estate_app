import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyIcon extends StatelessWidget {
  final obscureText;

  const VerifyIcon({super.key, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 249, 249),
            borderRadius: BorderRadius.circular(5), // Set the border radius
            border: Border.all(
              color: Colors.black, // Border color
              width: .3, // Border width
            ),
          ),
          width: 70,
          height: 30,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: [
              //only numeric keyboard.
              LengthLimitingTextInputFormatter(1), //only 6 digit
            ],
            obscureText: obscureText,
            cursorHeight: 20,
            cursorColor: Colors.black, // Set the cursor color
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16.0),
                labelStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5), // Set the label color
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                //,

                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
