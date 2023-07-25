import 'package:flutter/material.dart';
class OptionSettings extends StatelessWidget {
  const OptionSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

GestureDetector buildOptions(BuildContext context,String title) {
  return GestureDetector(
    onTap:() {

    },
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal:8 , vertical:20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(fontSize:20),),
          Icon(Icons.arrow_forward_ios,color:Colors.green),
        ],
      ),
    ),
  );
}