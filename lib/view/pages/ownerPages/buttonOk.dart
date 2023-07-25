import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
import '../productDetails/details.dart';
class ButtonOk extends StatelessWidget {
  const ButtonOk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => details()),
          );
        },
        child: Container(
          height: 50,
          width: 200,
          margin: EdgeInsets.symmetric(horizontal: 70),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.C4,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'OK',
            textAlign: TextAlign.center,
            style: AppStyle.Button1,
          ),
        ),
      ),
    );
  }
}
