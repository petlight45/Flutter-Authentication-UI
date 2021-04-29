import 'package:flutter/material.dart';
import 'package:project_1/components/components.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login_bg.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Forgot Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: size.width * 0.8,
            child: Column(
              children: <Widget>[
                SizedBox(
                    height:0.1 * size.height
                ),
                Text(
                  'Enter your email, we will send instruction on how to reset your password!',
                  style:
                      TextStyle(color: Colors.white, height: 1.5, fontSize: 15),
                ),
                SizedBox(
                  height:20
                ),
                TextInputWidget(
                  hintText: 'Email',
                  leadingIcon: Icon(Icons.email, color: Colors.white),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                    height:20
                ),
                RoundedButton(buttonText: 'Send',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
