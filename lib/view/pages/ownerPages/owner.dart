import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/homePage/home.dart';
import 'package:watchesproj/view/pages/ownerPages/ownerProduct.dart';
import 'package:watchesproj/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class owner extends StatelessWidget {
  //const owner({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Background(),
          Positioned(
            left: 0,
            top: 100,
            right: 0,
            child: Container(
              child: Column(children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'please Fill The Form',
                  style: AppStyle.w3,
                ),
                SizedBox(
                  height: 60,
                ),
                CustomTextField(
                    controller: emailController,
                    hintText: "Enter Your Email",
                    secure: false),

                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    controller: passwordController,
                    hintText: "Enter Your Password",
                    secure: true),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    (emailController.text.isEmpty)
                        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('please enter email'),
                          ))
                        : (passwordController.text.isEmpty)
                            ? ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(
                                content: Text('please enter password'),
                              ))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OwnerProduct()),
                              );
                  },
                  child: Text(
                    'Log In',
                    style: AppStyle.w3,
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
