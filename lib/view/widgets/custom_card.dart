import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class CustomCard extends StatelessWidget {
  String? imagepath, productTitle, productPrice;

  CustomCard({Key? key, this.imagepath, this.productPrice, this.productTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heighScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Card(
      color: AppColors.C2,
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Image(
                  image: AssetImage(imagepath!),
                  width: heighScreen * 0.1,
                  height: heighScreen * 0.1,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                child: Column(
                  children: [
                    Text(productTitle!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                    Text(productPrice!,style: TextStyle(fontSize: 14)),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
