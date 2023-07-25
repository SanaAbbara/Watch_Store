import 'package:watchesproj/view/pages/Auth/login.dart';
import 'package:watchesproj/view/pages/homePage/drawerDetails.dart';
import 'package:watchesproj/view/pages/homePage/home.dart';
import 'package:watchesproj/view/pages/settingPage/settings_page.dart';
import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
import '../profilePage/userprofile.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: AppColors.C1),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 190),
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.3),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/imgs/OIP.jpg"),
            ),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Text(
            'watches shop',
            style: AppStyle.T1,
          ),
          Text(
            'WatcheShop@gmail.com',
            style: AppStyle.T1,
          ),

        ],
      ),
    );
  }
}
