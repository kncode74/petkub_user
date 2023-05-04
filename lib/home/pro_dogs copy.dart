import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  final List<String> photo = [
    'https://heropomthailand.com/wp-content/uploads/2023/03/001-3000-64-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/001-3000-62-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/002-3000-66-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/003-3000-70-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/004-3000-64-scaled.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final left = profileHeight / 3;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            buidTop(),
            Container(
              margin: EdgeInsets.only(left: 30, top: 5),
              child: Column(
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
                  Row(
                    children: [
                      Text(
                        '@63022889',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              tabs: [
                Text(
                  'ข้อมูลส่วนตัว',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.3,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'รูปภาพ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'วัคซีน',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Pedigree',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        //bottomNavigationBar: manuBar(),
      ),
    );
  }

  Widget gally() => GridView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.all(1),
        itemCount: photo.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return Container(
            padding: const EdgeInsets.all(0.5),
            child: InkWell(
              child: CachedNetworkImage(
                imageUrl: photo[index],
                fit: BoxFit.cover,
                placeholder: ((context, url) => Container(
                      color: Colors.grey,
                    )),
                errorWidget: (context, url, error) => Container(
                  color: Colors.red.shade400,
                ),
              ),
            ),
          );
        }),
      );

  Widget buidTop() {
    final bottom = profileHeight / 2;
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

  Widget buildDogImages() => CircleAvatar(
        radius: profileHeight / 2.5,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
          'https://heropomthailand.com/wp-content/uploads/2023/02/IMG_3677-scaled.jpg',
        ),
      );

  Widget love() => Container(
        child: Image.asset(
          'images/hearth.png',
          height: 36,
        ),
      );
}
