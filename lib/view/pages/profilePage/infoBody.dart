import 'package:flutter/material.dart';

import '../../../constant/app_size.dart';
class InfoBody extends StatelessWidget {
  String textName;
  IconData iconData;
   InfoBody({Key? key,required this.textName, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.symmetric(vertical: 12.5),
        child: (Row(
          children: [
            SizedBox(width: 15),
            Icon(
              iconData,
              size: AppSize.SizeIcon,
              color: Colors.black,
            ),
            //SizedBox(width: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  textName,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        )));
  }
}
