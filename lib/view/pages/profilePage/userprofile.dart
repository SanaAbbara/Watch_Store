import 'package:watchesproj/constant/app_colors.dart';
import 'package:watchesproj/constant/app_size.dart';
import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/profilePage/infoBody.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Background(),
          Positioned(
            left: 0,
            top: 50,
            right: 0,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 90,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/imgs/Cap.PNG"),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "Your Profile",
                            style: AppStyle.NameProduct,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InfoBody(
                        textName: "Someone@gmail.com", iconData: Icons.email),
                    InfoBody(
                      textName: "009630912345678",
                      iconData: Icons.phone_iphone,
                    ),
                    InfoBody(
                      textName: "Syria , Damascus,\nalmazzeh",
                      iconData: Icons.add_location,
                    ),
                    InfoBody(textName: "Male", iconData: Icons.male),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
