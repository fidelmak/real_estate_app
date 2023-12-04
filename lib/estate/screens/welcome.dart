import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '/estate/constants/colors.dart';
import 'package:rich_text_widget/rich_text_widget.dart';

import '/estate/widgets/big_button.dart';
import '/estate/widgets/special_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        color: EstateColors.secondary,
        child: ListView(children: [
          Container(
              width: screenWidth * 3,
              height: screenHeight * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Image.asset(
                'assets/images/img2.png',
                fit: BoxFit.contain,
              )),
          SizedBox(height: 2),
          Container(
              width: 200, // Set the width of the container
              height: 300, // Set the height of the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(50.0), // Radius for the top-left corner
                  topRight:
                      Radius.circular(50.0), // Radius for the top-right corner
                ), // Set the border radius here
                color: Colors.white, // Set the background color
              ),
              child: ListView(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Center(
                        child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black, // Default color for the text
                          fontSize: 20,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Discover',
                            style: TextStyle(
                              color: EstateColors
                                  .primary, // Blue color for "Discover"
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' and Find your\nPerfect Dream ',
                            style: TextStyle(
                              color: Colors.black, // Blue color for "House"
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' House ',
                            style: TextStyle(
                              color: EstateColors
                                  .primary, // Blue color for "Discover"
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )),
                    SizedBox(height: 35),
                    Text(
                      "App to search and Discover the most suitable \nplace for you to stay",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    SpecialBtn(screenWidth: screenWidth),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Sign in');
                                // Add your navigation logic here or perform any other action.
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ])),
        ]),
      ),
    );
  }
}
