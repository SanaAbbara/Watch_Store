import 'package:watchesproj/constant/app_style.dart';
import 'package:watchesproj/view/pages/background.dart';
import 'package:watchesproj/view/pages/homePage/home.dart';
import 'package:watchesproj/view/pages/Auth/signup.dart';
import 'package:watchesproj/view/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void confirm() {
    (emailController.text.isEmpty)
        ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('please enter email'),
          ))
        : (passwordController.text.isEmpty)
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('please enter password'),
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
              top: 100,
              right: 0,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Welcome',
                      style: AppStyle.w3,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'You can follow all brands of Watches',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomTextField(
                        controller: emailController,
                        hintText: "Enter Your Email",
                        secure: false),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                        controller: passwordController,
                        hintText: "Enter Your Password",
                        secure: true),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        confirm();
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a member?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signup()),
                            );
                          },
                          child: Text(
                            ' Register Now',
                            style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
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