import 'package:watchesproj/constant/app_colors.dart';
import 'package:watchesproj/constant/app_style.dart';
import 'package:flutter/material.dart';
class BoardingButton extends StatelessWidget {
  String text;
   BoardingButton({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      width: 140,
      margin: EdgeInsets.symmetric(horizontal: 70),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.C1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppStyle.Button2,
      ),
    );
  }
}
