import 'package:watchesproj/constant/app_colors.dart';
import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/Auth/component/select_gender.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/homePage/home.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text_field.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  List<String> gender = ['Male', 'Female'];

  String selectedGender = "Male";

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void confirm() {
    (emailController.text.isEmpty)
        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('please enter email'),
          ))
        : (passwordController.text.isEmpty)
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('please enter password'),
              ))
            : (confirmController.text.isEmpty)
                ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('please enter confirm password'),
                  ))
                : (confirmController.text != passwordController.text)
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Make sure of your confirm password'),
                      ))
                    : (phoneController.text.isEmpty)
                        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('please enter your phone'),
                          ))
                        : (addressController.text.isEmpty)
                            ? ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(
                                content: Text('please enter your address'),
                              ))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => home()),
                              );
  }

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
                    Text(
                      'Welcome',
                      style: AppStyle.w4,
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                        controller: emailController,
                        hintText: "Enter Your Email",
                        secure: false),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: passwordController,
                        hintText: "Enter Your Password",
                        secure: true),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: confirmController,
                        hintText: "Confirm your Password",
                        secure: true),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        inputType: TextInputType.number,
                        controller: phoneController,
                        hintText: "Enter Your Phone Number",
                        secure: false),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                        controller: addressController,
                        hintText: "Enter Your Address",
                        secure: false),
                    SizedBox(
                      height: 20.0,
                    ),
                    SelectGender(
                      gender: gender,
                      selectedGender: selectedGender,
                      onchange: (value) {
                        setState(() {
                          selectedGender = value.toString();
                          print(selectedGender);
                        });
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        confirm();
                      },
                      child: Text(
                        'Continue',
                        style: AppStyle.w3,
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