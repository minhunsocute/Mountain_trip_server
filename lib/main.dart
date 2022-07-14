// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mountain_trip_server/pages/Login_page/logIIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mountain Trip Server',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Sen",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black12,
              fontSize: 18,
            ),
          ),
        ),
      ),
      home: LogIn_pages(),
    );
  }
}
