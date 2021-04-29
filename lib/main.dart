import 'package:flutter/material.dart';
import 'package:project_1/screens/screens.dart';

void main() =>
    runApp(MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginScreen(),
        'forgotPassword': (context) => ForgotPasswordScreen(),
        'createAccount': (context) => CreateAccountScreen()
      },
    ));
