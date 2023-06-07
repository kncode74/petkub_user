import 'package:flutter/material.dart';

import 'package:firstapp/home/prodog_1.dart';
import 'package:firstapp/home/prodog_2.dart';
import 'package:firstapp/home/prodog_3.dart';
import 'package:firstapp/home/prodog_4.dart';

class MainDog extends StatefulWidget {
  const MainDog({super.key});
  @override
  State<MainDog> createState() => _MainDogState();
}

class _MainDogState extends State<MainDog> {
  final double coverHeight = 136;
  final double profileHeight = 118;
  final double hearth = 36;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              buidTop(),
              Container(
                margin: const EdgeInsets.only(left: 30, top: 10),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Babybrown doggy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          '@63022889',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TabBar(
                indicatorColor: Color.fromRGBO(159, 203, 114, 1),
                tabs: [
                  Tab(
                    child: Text(
                      'ข้อมูลส่วนตัว',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.3,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                      child: Text(
                    'รูปภาพ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    'วัคซีน',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )),
                  Tab(
                    child: Text(
                      'Pedigree',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  FirstTab(),
                  const SecoundTab(),
                  const ThirdTab(),
                  const FourTab()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buidTop() {
    final bottom = profileHeight / 1.9;
    final top = coverHeight - profileHeight / 3;
    final left = coverHeight - profileHeight / 1;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
          top: top,
          left: left,
          child: Row(
            children: [
              buildDogImages(),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://heropomthailand.com/wp-content/uploads/2023/02/IMG_3528-scaled.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildDogImages() => const CircleAvatar(
      radius: 53,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(
          'https://heropomthailand.com/wp-content/uploads/2023/02/IMG_3677-scaled.jpg',
        ),
      ));

  Widget love() => Container(
        child: Image.asset(
          'images/hearth.png',
          height: 36,
        ),
      );
}
