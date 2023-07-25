import 'package:carousel_slider/carousel_slider.dart';
import 'package:watchesproj/view/pages/productDetails/compnent/build_view.dart';
import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';

class ProductImage extends StatefulWidget {
  List<String> imagesList;
   ProductImage({Key? key,required this.imagesList}) : super(key: key);

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:AppColors.C4,
        ),
        child: Column(
          children: [
            Row(children: [
              SizedBox(width: 15),
              Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
              SizedBox(width: 270),
              Icon(
                Icons.favorite,
                size: 15,
                color: Colors.red,
              ),
            ]),
            Container(
              width: 170,
              height: 160,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  enlargeFactor: 0.3,
                ),
                itemCount: widget.imagesList.length,
                itemBuilder: (context, index, _) {
                  return BuildView(imagepath: widget.imagesList[index]);
                },
              ),
            ),
          ],
        ))

    ;
  }
}
