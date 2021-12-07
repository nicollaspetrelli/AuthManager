import 'package:authmanagerapp/CreateAccount.dart';
import 'package:authmanagerapp/Login.dart';
import 'package:flutter/material.dart';
import 'package:authmanagerapp/home.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    title: 'AuthManger App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    routes: {
      "/home": (_) => new Home(),
      "/login": (_) => new Login(),
      "/createAccount": (_) => new CreateAccount(),
    },
  ));
}
