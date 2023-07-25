import 'dart:io';
import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/ownerPages/Home.dart';
import 'package:watchesproj/view/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constant/app_colors.dart';

class OwnerProduct extends StatefulWidget {
  OwnerProduct({Key? key}) : super(key: key);

  @override
  State<OwnerProduct> createState() => _OwnerProductState();
}

class _OwnerProductState extends State<OwnerProduct> {
  TextEditingController NameController = TextEditingController();

  TextEditingController desController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(
          children: [
            Background(),
            Positioned(
              left: 0,
              top: 20,
              right: 0,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "We hope you can sell your products",
                        style: AppStyle.w4,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                        controller: NameController,
                        hintText: "Enter watch name",
                        secure: false),
                    SizedBox(height: 20),

                    CustomTextField(
                        maxline: 4,
                        controller: desController,
                        hintText: "Enter description about your watch",
                        secure: false),

                    SizedBox(height: 20),
                    CustomTextField(
                        icon: Icons.monetization_on_outlined,
                        inputType: TextInputType.number,
                        controller: priceController,
                        hintText: "Enter the price ",
                        secure: false),
                    SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child:Container(
                      height: 70,
                      width: 150,
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.C4,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: AppStyle.Button1,
                      ),
                    ),
                ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}