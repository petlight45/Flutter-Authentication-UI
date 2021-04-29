import 'package:flutter/material.dart';
import 'dart:ui' as ui show Image, ImageFilter, TextHeightBehavior;
import 'package:project_1/components/components.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/register_bg.png'),
                fit: BoxFit.cover,
                colorFilter:
                ColorFilter.mode(Colors.black54, BlendMode.darken))),
        child: Column(
          children: <Widget>[
            SizedBox(height: 0.1 * size.width),
            Stack(children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: size.width * 0.14,
                  backgroundColor: Colors.grey[400].withOpacity(0.4),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: size.width * 0.1,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: size.width * 0.34,
                child: Container(
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                      border: Border.all(color: Colors.white, width: 2)),
                  child:
                  Icon(Icons.arrow_upward, color: Colors.white, size: 20),
                ),
              )
            ]),
            SizedBox(height: size.width * 0.1),
            TextInputWidget(
              hintText: 'User',
              leadingIcon: Icon(Icons.person, color: Colors.white),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 20),
            TextInputWidget(
              hintText: 'Email',
              leadingIcon: Icon(Icons.email, color: Colors.white),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            TextInputWidget(
              hintText: 'Password',
              leadingIcon: Icon(Icons.lock, color: Colors.white),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 20),
            TextInputWidget(
              hintText: 'Confirm Password',
              leadingIcon: Icon(Icons.lock, color: Colors.white),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
            ),
            SizedBox(height: 30),
            RoundedButton(
              buttonText: 'Register',
            ),
            SizedBox(height: 30),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  InkWell(
                    onTap: ()=>Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                      ),
                    ),
                  )
                ])
          ],
        ),
      ),
    );
  }
}
