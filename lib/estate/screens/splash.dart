import 'package:flutter/material.dart';

import '/estate/constants/colors.dart';
import 'welcome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: EstateColors.icox,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/images/home.jpeg'),
              ),
              SizedBox(height: 16),
              const Text(
                'Real - Estate',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: screenHeight * 0.2,
                child: Card(
                    elevation: 4, // Increase elevation for a taller card
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      height: screenHeight * 0.08,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Welcome()),
                              );
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: EstateColors.icox,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        )));
  }
}
