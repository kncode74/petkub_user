import 'package:firstapp/home/edit_profile.dart';
import 'package:firstapp/home/pro_dogs.dart';
import 'package:firstapp/home/profile_user.dart';

import 'package:firstapp/home/scan.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void _navigateBottomNavibar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _children = [const Scanner(), const Mainapp()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigateBottomNavibar,
        type: BottomNavigationBarType.fixed,
        items: const [
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
