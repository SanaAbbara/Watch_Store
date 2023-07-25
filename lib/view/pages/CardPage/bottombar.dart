import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
    height: 70,
    width: 100,
    margin: EdgeInsets.symmetric(horizontal: 70),
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color: AppColors.C1,
    borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
    'The final price: 8500\$',
    textAlign: TextAlign.center,
    style: AppStyle.Button2,
    ),
    );
  }
}
