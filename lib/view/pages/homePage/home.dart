import 'package:watchesproj/constant/app_colors.dart';
import 'package:watchesproj/constant/app_size.dart';
import 'package:watchesproj/view/pages/Auth/login.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/homePage/header.dart';
import 'package:watchesproj/view/pages/homePage/homeBottombar.dart';
import 'package:watchesproj/view/pages/homePage/drawerDetails.dart';
import 'package:watchesproj/view/pages/productDetails/details.dart';
import 'package:watchesproj/view/pages/settingPage/settings_page.dart';
import 'package:watchesproj/view/pages/profilePage/userprofile.dart';
import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/custom_text_field.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController SeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Header(),
            DrawerDetails(
                textName: "My Profile",
                iconData: Icons.person,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );
                }),
            DrawerDetails(
                textName: "Home",
                iconData: Icons.home,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                }),
            DrawerDetails(
                textName: "Setting",
                iconData: Icons.settings,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => setings_page()),
                  );
                }),
            DrawerDetails(
                textName: "Log Out",
                iconData: Icons.logout,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                }),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.C1,
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(children: [
          Background(),
          Positioned(
            left: 0,
            top: 10,
            right: 0,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: (Text(
                          'Our Colletion',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ))),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: (Text(
                          'All kinds of elegant watches',
                          style: TextStyle(fontSize: 17),
                        ))),
                    SizedBox(height: 15),
                    CustomTextField(
                        controller: SeController,
                        hintText: "Search",
                        secure: false),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            //scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            primary: false,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => details()),
                                  );
                                },
                                child: CustomCard(
                                  imagepath: "assets/imgs/th.jpg",
                                  productTitle: "Rolex Sea-Dweller",
                                  productPrice: "2000\$",
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => details()),
                                  );
                                },
                                child: CustomCard(
                                  imagepath: "assets/imgs/t2.jpg",
                                  productTitle:
                                      "Rado Women Gold\n Plated Watch",
                                  productPrice: "4500\$",
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => details()),
                                  );
                                },
                                child: CustomCard(
                                  imagepath: "assets/imgs/rr4.jpg",
                                  productTitle:
                                      "Rado Centrics\nAutomatic Watch",
                                  productPrice: "2500\$",
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => details()),
                                  );
                                },
                                child: CustomCard(
                                  imagepath: "assets/imgs/we.jpg",
                                  productTitle: "Black Rado Men",
                                  productPrice: "4000\$",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
