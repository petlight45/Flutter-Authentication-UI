import 'package:flutter/material.dart';
import 'package:project_1/components/components.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/login_bg.png'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            Expanded(
                child: Center(
                    child: Text(
              'Foodybite',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ))),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: TextInputWidget(
                hintText: 'Email',
                leadingIcon: Icon(Icons.email, color: Colors.white),
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: TextInputWidget(
                hintText: 'Password',
                leadingIcon: Icon(Icons.lock, color: Colors.white),
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
                obscureText: true,
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context,'forgotPassword'),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text('Forgot Password',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RoundedButton(buttonText: 'Login',),
            SizedBox(height: 20),
            InkWell(
              onTap: () => Navigator.pushNamed(context, 'createAccount'),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Create New Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      )
    ]);
  }
}
