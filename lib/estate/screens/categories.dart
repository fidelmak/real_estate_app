import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bottom_nav.dart';
import 'book.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

enum Choice { Discover, Activities }

class _CategoriesScreenState extends State<CategoriesScreen> {
  Choice? SelectedChoice;
  final lightTheme = ThemeData(
    primaryColor: Colors.grey,
    hintColor: const Color.fromARGB(255, 43, 41, 41),
    focusColor: Color.fromARGB(237, 0, 0, 0),
    errorColor: Color.fromARGB(255, 0, 0, 0),
    hoverColor: Color.fromARGB(255, 0, 0, 0),
    fontFamily: 'Roboto',
    // Add more theme properties as needed
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color: lightTheme.primaryColor,
                icon: Icon(Icons.sort),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Available Houses",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    SelectedChoice = Choice.Discover;
                  });
                },
                color: SelectedChoice == Choice.Discover
                    ? Colors.grey
                    : Colors.red,
                icon: Icon(Icons.notifications_outlined),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    SelectedChoice = Choice.Activities;
                  });
                },
                color: SelectedChoice == Choice.Discover
                    ? Colors.red
                    : Colors.grey,
                icon: Icon(Icons.search),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 43, 41, 41),
      ),
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: ListView(
          children: [
            Container(
              color: Color.fromARGB(255, 43, 41, 41),
              child: Row(
                children: [
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              SelectedChoice = Choice.Discover;
                            });
                          },
                          child: Text(
                            "Duplex",
                            style: TextStyle(
                              color: SelectedChoice == Choice.Discover
                                  ? Colors.grey
                                  : Colors.red,
                            ),
                          ))),
                  Expanded(
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              SelectedChoice = Choice.Activities;
                            });
                          },
                          child: Text(
                            "Bungalow",
                            style: TextStyle(
                              color: SelectedChoice == Choice.Discover
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                          ))),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => calResult(
                              bmiResult: '34',
                              resultText: 'okay you are right',
                              interpretation: 'you are good to go',
                            )));
              },
              child: Container(
                width: screenWidth,
                child: gradientCard(
                  onPress: () {
                    print("view");
                  },
                  icon: Icons.church_outlined,
                  text: "mansion ",
                  image: AssetImage(
                    "assets/house/h1.jpeg",
                  ),
                  // width: 60,
                  // height: 170,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: screenWidth * 0.5,
                        child: gradientCard(
                          onPress: () {},
                          icon: Icons.masks_outlined,
                          text: "Duplex Delight",
                          image: AssetImage(
                            "assets/house/h5.jpeg",
                          ),

                          // height: 200,
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.5,
                        height: 240,
                        child: gradientCard(
                          onPress: () {},
                          icon: Icons.mosque_outlined,
                          text: "Castle Crest",
                          image: AssetImage(
                            "assets/house/h4.jpeg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: screenWidth * 0.5,
                        height: 240,
                        child: gradientCard(
                          onPress: () {},
                          icon: Icons.church_outlined,
                          text: "Townhouse Tranquility",
                          image: AssetImage(
                            "assets/house/h3.jpeg",
                          ),
                          // width: 230,
                          // height: 200,
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.5,
                        child: gradientCard(
                          onPress: () {},
                          icon: Icons.wb_sunny_outlined,
                          text: "Villa Vista ",
                          image: AssetImage(
                            "assets/house/h2.jpeg",
                          ),
                          // width: 230,
                          // height: 200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            BottomNav()
          ],
        ),
      ),
    );
  }
}

class gradientCard extends StatelessWidget {
  gradientCard({
    required this.icon,
    required this.text,
    required this.image,
    required this.onPress,
  });
  final Function onPress;
  final IconData icon;
  final text;
  final AssetImage image;
  // final width;
  // final height;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(7),
      elevation: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          // width: width,
          // height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 245, 244, 243).withOpacity(0.2),
                Color.fromARGB(255, 73, 2, 80).withOpacity(0.2),
                Colors.black.withOpacity(0.5),
              ],
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 27,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
