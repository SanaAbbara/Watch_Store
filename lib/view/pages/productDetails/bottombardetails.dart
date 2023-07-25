import 'package:flutter/material.dart';
import 'package:watchesproj/constant/app_colors.dart';
import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/CardPage/card.dart';
import 'package:watchesproj/view/pages/productDetails/details.dart';
class BottomBarDetails extends StatelessWidget {
  const BottomBarDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => cardPage()),
          );
        },
        child: Container(
          height: 70,
          width: 100,
          margin: EdgeInsets.symmetric(horizontal: 70),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.C4,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'add to card',
            textAlign: TextAlign.center,
            style: AppStyle.Button1,
          ),
        ),
      ),);
  }
}
