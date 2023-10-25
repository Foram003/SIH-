import 'package:flutter/material.dart';
import 'package:pib_application/login.dart';
import 'package:pib_application/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
      'register':(context)=> MyRegister()
    },
  ));
}

