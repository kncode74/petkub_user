import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  openBook(),
                ],
              ),
            ),
            Expanded(
                child: getDataVaccine(
                    'ครั้งที่1', ' 8 มีนาคม 2566', 'ป้องกันโรคหวัดสุนัข')),
            Expanded(
                child: getDataVaccine(
                    'ครั้งที่2', ' 8 สิงหาคม 2566', 'ป้องกันโรคหวัดสุนัข')),
          ],
        ),
      ),
    );
  }

  getDataVaccine(String time, String date, String vaccine) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 47,
              width: 340,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(249, 250, 131, 3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 53,
                  width: 170,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 1.0),
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 53,
                  width: 170,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(0, 2.0),
                        blurRadius: 2.0,
                        spreadRadius: 1.0),
                  ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        vaccine,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Widget openBook() => Container(
        width: 256,
        height: 89,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(249, 250, 131, 3),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 2.0,
                  spreadRadius: 1.0),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/vaccination.png',
                  height: 73,
                ),
                const Column(
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
}
