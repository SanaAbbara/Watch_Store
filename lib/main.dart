import 'package:watchesproj/view/pages/CardPage/card.dart';
import 'package:watchesproj/view/pages/onboarding/boarding.dart';
import 'package:watchesproj/view/pages/homePage/home.dart';
import 'package:watchesproj/view/pages/Auth/login.dart';
import 'package:watchesproj/view/pages/ownerPages/Home.dart';
import 'package:watchesproj/view/pages/ownerPages/ownerProduct.dart';
import 'package:watchesproj/view/pages/productDetails/details.dart';
import 'package:watchesproj/view/pages/settingPage/settings_page.dart';
import 'package:watchesproj/view/pages/Auth/signup.dart';
import 'package:watchesproj/view/pages/profilePage/userprofile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Boarding(),
    );
  }
}
//flutter upgrade