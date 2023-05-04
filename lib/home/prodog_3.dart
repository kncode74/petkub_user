import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                openBook(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                vaccine_1(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget openBook() => Container(
        margin: EdgeInsets.only(left: 80, top: 15, bottom: 25),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(249, 250, 131, 3),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/vaccination.png',
                  height: 73,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '   สมุดฉีดวัคซีนน้องหมา   ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'เปิดดู',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
  Widget vaccine_1() => Container(
        child: Container(
          margin: EdgeInsets.only(left: 80),
          decoration: BoxDecoration(
            color: Color.fromRGBO(249, 250, 131, 3),
          ),
          child: Column(
            children: [
              Text(
                'ครั้งที่ 1',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Text(
                      'ครั้งที่ 1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
