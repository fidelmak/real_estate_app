import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../widgets/big_button.dart';
import '../sign_up/sign_up.dart';
import '../user/user.dart';
import "/estate/widgets/ktextfield.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Sign in",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const Text(
              " HI!! Welcome back you have been missed",
              style: TextStyle(fontSize: 15, color: Color(0xD89E9E9E)),
            ),
            const SizedBox(
              height: 30,
            ),
            const KtextField(
              littleLabel: 'Email',
              littleHint: 'Email@gmail.com',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            const KtextField(
              obscureText: true,
              littleLabel: 'Password',
              littleHint: 'input a strong password',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                  onPressed: () {},
                  child: const Text("forget password",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ))),
              SizedBox(
                width: 90,
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            BigButton(
              label: Text(
                "Sign-in",
                style: TextStyle(color: Colors.white),
              ),
              goTo: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserDetails()));
              },
              bgColor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " or Sign in with ",
              style: TextStyle(
                fontSize: 11,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Handle the click for the first image
                    // You can navigate to a new screen or perform some action here
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/icon1.png'), // Replace with your image source
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    // Handle the click for the second image
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/icon2.png'), // Replace with your image source
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    // Handle the click for the third image
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/icon3.png'), // Replace with your image source
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account ? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'sign-up ',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Sign in');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
