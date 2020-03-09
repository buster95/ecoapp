import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ecoapp/LoginPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'ProximaNova',
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
        elevation: 0,
        color: ThemeData.light().canvasColor,
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      primarySwatch: Colors.green,
    ),
    home: LoginPage(),
  ));
}
