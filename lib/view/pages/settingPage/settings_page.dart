import 'package:watchesproj/constant/app_size.dart';
import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/settingPage/option_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setings_page extends StatefulWidget {
  const setings_page({Key? key}) : super(key: key);

  @override
  State<setings_page> createState() => _setings_pageState();
}

class _setings_pageState extends State<setings_page> {
  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Background(),
          Positioned(
            left: 20,
            top: 50,
            right: 10,
            child: ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    Text("Account", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                buildOptions(context, "Change Password"),
                buildOptions(context, "Content Settings"),
                buildOptions(context, "Change Language"),
                buildOptions(context, "Privacy and Security"),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
