import 'package:flutter/material.dart';

class CustomTextfiled extends StatelessWidget {
  final   controller;
  final String hintText;
 
  const CustomTextfiled(
      {super.key,
      required this.controller,
      required this.hintText,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: controller,
           style: TextStyle(
            color: Colors.black,// Input text color
          ),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(189, 189, 189, 1))),
            fillColor: Color.fromRGBO(238, 238, 238, 1),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Theme.of(context).hintColor,)
          ),
        ),
      ),
    );
  }
}