import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:watchesproj/constant/app_colors.dart';
import 'package:watchesproj/view/pages/ownerPages/buttonOk.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/app_style.dart';
import '../background.dart';
import 'dart:async';
import 'package:flutter/src/material/material_state.dart';

import '../productDetails/details.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Background(),
            Positioned(
              left: 0,
              top: 20,
              right: 0,
              bottom: 0,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                openImages();
                              },
                              child: Text("Select your product images"),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(AppColors.C4),
                              ),
                            ),
                            imagefiles != null
                                ? Wrap(
                                    children: imagefiles!.map((imageone) {
                                      return Container(
                                          child: Card(
                                        child: Container(
                                          height: 100,
                                          width: 100,
                                          child:
                                              Image.file(File(imageone.path)),
                                        ),
                                      ));
                                    }).toList(),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset("assets/imgs/g1.jpg"),
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Image.asset("assets/imgs/g2.jpg"),
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Image.asset("assets/imgs/g3.jpg"),
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ButtonOk(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
