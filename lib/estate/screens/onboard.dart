import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../profiles/login/login.dart';
import '../widgets/loading.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({super.key});

  @override
  State<OnboardOne> createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        color: Colors.white,
        child: ListView(children: [
          Align(
            alignment: Alignment.centerRight, // Align text to the left
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ), // Button text
          ),
          Container(
              width: screenWidth * 3,
              height: screenHeight * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Image.asset(
                'assets/images/search2.png',
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
                            text: 'Find ',
                            style: TextStyle(
                              color: EstateColors
                                  .icox, // Blue color for "Discover"
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: ' Your Perfect Home \n  ',
                            style: TextStyle(
                              color: EstateColors
                                  .primary, // Blue color for "House"
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: 'with Us Today ',
                            style: TextStyle(
                              color: EstateColors
                                  .icox, // Blue color for "Discover"
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )),
                    SizedBox(height: 35),
                    Text(
                      "lorem ipsum ipsum dollor sit lorem ipsum ipsum dollor sit  \n lorem ipsum orem ipsum ipsum dollor sit ",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: screenWidth * 0.6,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: EstateColors.icox, // Button color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(50.0), // Border radius
                            ),
                            minimumSize: Size(
                                200.0, 48.0), // Width and height of the button
                          ),
                          onPressed: () {
                            onTapStartCustomLoadingProgressBtn(context);

                            loadNextScreen(context);
                          },
                          child: Text("Load Spaces",
                              style: TextStyle(color: Colors.white))),
                    ),
                    SizedBox(height: 50),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'wanna explore ? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'search more details ',
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
                    )
                  ],
                ),
              ])),
        ]),
      ),
    );
  }

  Future<Null> loadNextScreen(BuildContext context) {
    return Future.delayed(Duration(seconds: 3), () {
      // Execute this code after 3 seconds
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }
}
