import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../constants/constants.dart';

class CreditCardWidget extends StatelessWidget {
  final Color themeColor;
  final bool collapsed;
  const CreditCardWidget({
    this.themeColor = Colors.white,
    this.collapsed = false,
  });
  @override
  Widget build(BuildContext context) {
    return _buildExpanded(context);
  }

  Widget _buildExpanded(BuildContext context) {
    double rowWidth = MediaQuery.of(context).size.width;
    Color color = themeColor == Colors.white ? Colors.black : Colors.white;
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 24.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 1, 33, 58),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
              color: AppColors.backGround,
              blurRadius: 200.0,
              spreadRadius: 0.1,
              offset: Offset(0.0, 10.0)),
          BoxShadow(color: Colors.white, blurRadius: 300.0, spreadRadius: 10.5)
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/home.jpeg'),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Update your Profile",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: rowWidth * 0.05,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Anil Mathur',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.edit_note_outlined,
                      color: AppColors.primaryColor,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 6.0,
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 9,
              ),
              SizedBox(
                height: 10,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(AppColors
                        .primaryColor), // Set the desired background color here
                  ),
                  onPressed: () {},
                  child: Text(
                    'ID:1234567AE,',
                    style: TextStyle(fontSize: 6.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'card.expiryDate,',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 8.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account-Free',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 8.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  SizedBox(
                    height: 14,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(AppColors
                            .primaryColor), // Set the desired background color here
                      ),
                      onPressed: () {},
                      child: Text(
                        'Upgrade Now ',
                        style: TextStyle(fontSize: 8.0, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Complete Profile 50%',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: Colors.white),
              ),
              SizedBox(
                height: 8,
              ),
              SimpleAnimationProgressBar(
                height: 30 / 2,
                width: 12 * 10,
                backgroundColor: Colors.white,
                foregrondColor: AppColors.primaryColor,
                ratio: 0.5,
                direction: Axis.horizontal,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(seconds: 3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 241, 230, 234),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
