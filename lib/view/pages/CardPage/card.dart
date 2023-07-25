import 'package:watchesproj/view/pages/CardPage/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
import '../../widgets/shopping_card.dart';
import '../productDetails/details.dart';

class cardPage extends StatelessWidget {
  const cardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Your Purchased",
                      style: AppStyle.NameProduct,
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 90,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/imgs/fe.jpg"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ListView(
                    //scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => details()),
                            );
                          }
                          ;
                        },
                        child: shoppingCard(
                          imagepath: "assets/imgs/th.jpg",
                          productprice: "Price: 2000\$",
                          productnumber: "Number of watches: 2",
                          totalprice: "Totalprice: 4000\$",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => details()),
                            );
                          }
                          ;
                        },
                        child: shoppingCard(
                          imagepath: "assets/imgs/t2.jpg",
                          productprice: "Price: 4500\$",
                          productnumber: "Number of watches: 1",
                          totalprice: "Totalprice: 4500\$",
                        ),
                      ),
                    ]),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar:BottomBar(),
    );
  }
}
