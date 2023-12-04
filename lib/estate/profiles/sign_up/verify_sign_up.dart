import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../widgets/big_button.dart';
import '../../widgets/verify_icon.dart';

class VerifySignUp extends StatefulWidget {
  const VerifySignUp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _VerifySignUpState createState() => _VerifySignUpState();
}

class _VerifySignUpState extends State<VerifySignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  " Verify Code ",
                  style: TextStyle(fontSize: 30, color: Color(0xD89E9E9E)),
                ),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Please Send the code we just sent to \n ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'akblow@gmail.com ',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  VerifyIcon(
                    obscureText: false,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerifyIcon(
                    obscureText: false,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerifyIcon(
                    obscureText: false,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  VerifyIcon(
                    obscureText: false,
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: " Don't receive OTP? \n",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Resend code',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifySignUp()));
                  },
                  child: BigButton(
                    label: Text(
                      "Verify",
                      style: TextStyle(color: Colors.white),
                    ),
                    goTo: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ));
                    },
                    bgColor: Colors.black,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
