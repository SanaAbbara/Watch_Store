import 'package:flutter/material.dart';

import '../../../constant/app_size.dart';

class DrawerDetails extends StatelessWidget {
  String textName;
  IconData iconData;
  VoidCallback onpressed;

  DrawerDetails(
      {Key? key,
      required this.textName,
      required this.iconData,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: AppSize.SizeIcon,
        color: Colors.green,
      ),
      title: Text(textName),
      onTap: onpressed,
    );
  }
}
