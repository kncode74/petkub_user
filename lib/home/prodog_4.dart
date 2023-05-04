import 'package:flutter/material.dart';

class FourTab extends StatelessWidget {
  const FourTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            bookParent(),
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 141,
                  height: 180,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/dog.webp',
                        height: 132,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 60, right: 50, top: 40),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: 141,
                  height: 180,
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'images/dog.webp',
                        height: 132,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 60, right: 50, top: 40),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget bookParent() => Container(
        margin: EdgeInsets.only(left: 60, right: 60, top: 10),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 160, 131, 3),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/love-books.png',
                  height: 73,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ใบเพดดีกรีพันธุกรรม',
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
}
