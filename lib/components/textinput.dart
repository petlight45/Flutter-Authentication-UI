import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  String hintText;
  Widget leadingIcon;
  TextInputType textInputType;
  TextInputAction textInputAction;
  bool obscureText;

  TextInputWidget(
      {this.hintText,
      this.leadingIcon,
      this.textInputType,
      this.textInputAction,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.grey[500].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: this.leadingIcon,
              hintText: this.hintText,
              hintStyle: TextStyle(
                color: Colors.white,
                height: 1.5,
              )),
          style: TextStyle(
            color: Colors.white,
            height: 1.5,
          ),
          keyboardType: this.textInputType,
          textInputAction: this.textInputAction,
          obscureText: this.obscureText,
        ),
      ),
    );
  }
}
