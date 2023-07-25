import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 0,
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/imgs/ff3.jpg"))),
      ),
    );

  }
}
