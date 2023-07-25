import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import '../../constant/app_style.dart';
import '../pages/Auth/signup.dart';

class shoppingCard extends StatelessWidget {
  String? imagepath, productprice, productnumber, totalprice;

  shoppingCard(
      {Key? key,
      this.imagepath,
      this.productprice,
      this.productnumber,
      this.totalprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heighScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Card(
      color: AppColors.C4,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        child: Row(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Image(
              image: AssetImage(imagepath!),
              width: heighScreen * 0.2,
              height: heighScreen * 0.2,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  productprice!,
                  style: TextStyle(fontSize: 20),
                ),
                Text(productnumber!, style: TextStyle(fontSize: 14)),
                Text(totalprice!, style: TextStyle(fontSize: 14)),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signup()),
                    );
                  },

                  child: Container(
                    width:100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      ' remove',
                      style: AppStyle.Button1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
