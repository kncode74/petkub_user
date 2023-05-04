import 'package:firstapp/gallery_page.dart';
import 'package:firstapp/home/first_app.dart';
import 'package:firstapp/home/homepage.dart';
import 'package:firstapp/home/pro_dogs.dart';
import 'package:firstapp/home/profile_user.dart';
import 'package:firstapp/home/signin.dart';
import 'package:firstapp/home/p.dart';
import 'package:firstapp/home/prodog_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

//สร้าง widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "flutter Demo",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: homePage());
  }
}
