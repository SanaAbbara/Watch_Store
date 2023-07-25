import 'dart:ui';
import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/productDetails/bottombardetails.dart';
import 'package:watchesproj/view/pages/productDetails/compnent/product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_size.dart';
import '../CardPage/card.dart';
import '../homePage/home.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  //Country List
  List<String> imagesList = [
    "assets/imgs/g1.jpg",
    "assets/imgs/g2.jpg",
    "assets/imgs/g3.jpg",
  ];
  List<String> images = [
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            ProductImage(imagesList: imagesList),
            SizedBox(height: 15),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: (Text(
                  'Rolex Sea-Dweller',
                  textAlign: TextAlign.start,
                  style: AppStyle.NameProduct,
                ))),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: (Text(
                  'A classic watch that fits all wrists and styles',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15),
                ))),
            SizedBox(height: 15),
            Container(
                child: (Row(
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.star,
                  size: AppSize.SizeIcon,
                  color: Colors.yellow,
                ),
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '(Avg Rating)',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 90),
                Text(
                  "2000\$",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ))),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: (Text(
                  'Description:',
                  style: AppStyle.Des_Rev,
                ))),
            SizedBox(
              height: 7,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: (Text(
                  'What distinguishes these watches is the attention to detail and finding the perfect pairing between style and functionality.',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15),
                ))),
            SizedBox(height: 10),
            Row(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: (Text(
                  "Reviews:",
                  style: AppStyle.Des_Rev,
                )),
              ),
              Container(
                child: FlutterImageStack(
                  imageList: images,
                  showTotalCount: true,
                  totalCount: 3,
                  itemCount: 3,
                  itemRadius: 50,
                  itemBorderColor: AppColors.C4,
                ),
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarDetails(),
    );
  }
}
