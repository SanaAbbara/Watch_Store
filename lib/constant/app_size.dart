//import 'dart:html';

import 'package:flutter/material.dart';

class AppSize{
  static late MediaQueryData mediaQueryData;
  static late double screenheight;
  static late double screenwidth;
  void init(BuildContext context){
    mediaQueryData=MediaQuery.of(context);
    screenheight=mediaQueryData.size.height;
    screenwidth=mediaQueryData.size.width;
  }
static late double  h10=screenheight*.3;
static late double  w10=screenwidth*.9;

static final double SizeIcon = 25.0;
}