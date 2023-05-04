import 'package:firstapp/home/pro_dogs.dart';
import 'package:firstapp/home/profile_user.dart';
import 'package:firstapp/home/scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectIndex = 0;
  void _navigateBottomNavibar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _children = [Scanner(), MainDog()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigateBottomNavibar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('images/6927609.png'),
                height: 35,
              ),
              label: 'scan'),
          BottomNavigationBarItem(
              icon: Image(image: AssetImage('images/1076877.png'), height: 35),
              label: 'dog'),
        ],
      ),
    );
  }
}
