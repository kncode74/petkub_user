import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class signIn extends StatelessWidget {
  const signIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'images/logo.png',
            height: 200,
          ),
          Text(
            'ยินดีต้อนรับสู่',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Babykwan's Dog house",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          tapLogin(),
          SizedBox(
            height: 10,
          ),
          tapSignin()
        ]),
      ),
    );
  }

  Widget tapLogin() => Container(
        margin: EdgeInsets.only(left: 60, right: 60),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(59, 89, 152, 1),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/145/145802.png',
              height: 45,
            ),
            Text(
              'ลงชื่อเข้าใช้ด้วย Facebook',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      );

  Widget tapSignin() => Container(
        margin: EdgeInsets.only(
          left: 60,
          right: 60,
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(59, 89, 152, 1)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/145/145802.png',
              height: 45,
            ),
            Text(
              'เข้าสู่ระบบด้วย Facebook',
              style: TextStyle(
                  color: Color.fromRGBO(59, 89, 152, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      );
}
