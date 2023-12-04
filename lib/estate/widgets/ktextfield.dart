import 'package:flutter/material.dart';

class KtextField extends StatelessWidget {
  final String littleLabel;
  final String littleHint;
  final obscureText;

  const KtextField(
      {super.key,
      required this.littleLabel,
      required this.littleHint,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(littleLabel),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 249, 249),
            borderRadius: BorderRadius.circular(10), // Set the border radius
            border: Border.all(
              color: Colors.black, // Border color
              width: .3, // Border width
            ),
          ),
          width: 300,
          height: 40,
          child: TextField(
            obscureText: obscureText,
            cursorHeight: 20,
            cursorColor: Colors.black, // Set the cursor color
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16.0),
                labelText: littleHint,
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
