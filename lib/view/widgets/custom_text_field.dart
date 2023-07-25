import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  bool secure;
  TextInputType? inputType;
  IconData? icon;
  int? maxline;
  CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.secure,
       this.inputType= TextInputType.name,
       this.maxline=1,
        this.icon,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            maxLines: maxline ,
            keyboardType: inputType,
            controller: controller,
            obscureText: secure,
            decoration: InputDecoration(
              suffixIcon: Icon(icon),
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
