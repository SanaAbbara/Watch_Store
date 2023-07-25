import 'package:watchesproj/view/pages/Auth/login.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/onboarding/boardingButton.dart';
import 'package:watchesproj/view/pages/ownerPages/owner.dart';
import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';

class Boarding extends StatelessWidget {
  const Boarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Background(),
          Positioned(
            left: 0,
            top: 50,
            right: 0,
            child: Container(
              child: Column(children: [
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Welcome to our application\n where you will find the latest and most modern watches',
                    textAlign: TextAlign.center,
                    style: AppStyle.welcomInterface,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'What you are waiting for?',
                    textAlign: TextAlign.center,
                    style: AppStyle.welcomInterface,
                  ),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  child: BoardingButton(text: 'Log In'),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => owner()),
                    );
                  },
                  child: BoardingButton(text: "Owner Account"),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}