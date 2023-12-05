import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../screens/categories.dart';
import '../../widgets/bottom_nav.dart';
import '../../widgets/creditcard.dart';

//import 'card.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});
  static String id = 'user';

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  // int _page = 0;
  // bool _isHovered = false;
  //GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: AppColors.backGround,
      appBar: AppBar(
        toolbarHeight: 60,
        title: Center(
          child: Text(
            'User Account',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: AppColors.darkColor,
      ),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: null,
          ),
          CreditCardWidget(),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()));
            },
            child: myCardTag(
                'Get assess to house listing ',
                Icon(
                  Icons.image,
                  color: AppColors.primaryColor,
                ),
                'upload your photos'),
          ),
          myCardTag(
              'Partner Expectation',
              Icon(
                Icons.group,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Introduction',
              Icon(
                Icons.note,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Basic Information',
              Icon(
                Icons.error_outline,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Education and Career',
              Icon(
                Icons.school,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Physical Attributes',
              Icon(
                Icons.auto_graph,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Spiritual And Social Background',
              Icon(
                Icons.temple_buddhist,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Life Style ',
              Icon(
                Icons.local_bar,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Astronomical Information',
              Icon(
                Icons.public,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Permanent Address',
              Icon(
                Icons.dns,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Family Information ',
              Icon(
                Icons.family_restroom,
                color: AppColors.primaryColor,
              ),
              ''),
          myCardTag(
              'Additional Personal Details',
              Icon(
                Icons.edit_note,
                color: AppColors.primaryColor,
              ),
              ''),
          SizedBox(
            height: 24,
          ),
        ],
      )),
    );
  }

  Container myCardTag(String heading, Icon icon, String text) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: ListTile(
        leading: icon,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading,
                style: TextStyle(color: AppColors.textColor, fontSize: 14)),
            Text(text,
                style: TextStyle(color: AppColors.textColor, fontSize: 10)),
          ],
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: AppColors.backGroundOne),
      ),
    );
  }
}
