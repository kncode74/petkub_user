import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyFirt extends StatelessWidget {
  const MyFirt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', height: 300),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [login(), signIn()],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget signIn() => Material(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Text(
              ' สมัครสมาชิก',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
          ),
        ),
      );
  Widget login() => Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              decoration: new BoxDecoration(
                  border: new Border.all(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'เข้าสู่ระบบ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            )),
      );
}
