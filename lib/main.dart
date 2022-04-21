import 'package:flutter/material.dart';
import 'package:firstassignment/login.dart';
import 'package:firstassignment/signup.dart';
import 'package:firstassignment/flowers.dart';
import 'package:firstassignment/flowerswithgridview.dart';
import 'package:firstassignment/flowersitem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: { '/login': (context) => Login(), '/flowers': (context) =>FlowersWGridView(),},

      title: 'Flowers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}


