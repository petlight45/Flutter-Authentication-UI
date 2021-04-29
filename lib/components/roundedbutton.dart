import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String buttonText;

  RoundedButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.blueAccent),
      child: FlatButton(
        onPressed: () => {},
        child: Text(
          this.buttonText,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
