import 'package:flutter/material.dart';

class BuildView extends StatelessWidget {
  String imagepath;
   BuildView({Key? key,required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: DecorationImage(
            image: AssetImage(
              imagepath,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );

  }
}
