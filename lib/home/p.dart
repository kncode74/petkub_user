import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Pofile extends StatelessWidget {
  Pofile({super.key});
  final List<String> photo = [
    'https://heropomthailand.com/wp-content/uploads/2023/03/001-3000-64-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/001-3000-62-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/002-3000-66-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/003-3000-70-scaled.jpg',
    'https://heropomthailand.com/wp-content/uploads/2023/03/004-3000-64-scaled.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 136,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: const DecorationImage(
                        image: const AssetImage('images/me.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          DogProfile(),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 55),
                          Image.asset(
                            'images/hearth.png',
                            height: 36,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 200, left: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'หมีน้อยช็อกโกบราวน์',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '@63022889',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'ข้อมูลส่วนตัว',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  height: 3,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(70, 147, 137, 1)),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: gally())
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
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

  Widget DogProfile() => CircleAvatar(
        radius: 59,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage('images/dog.webp'),
        ),
      );

  HomeTopBars() {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'ข้อมูลส่วนตัว',
              ),
              Tab(
                text: 'รูปภาพ',
              ),
              Tab(
                text: 'รูปภาพ',
              ),
              Tab(
                text: 'รูปภาพ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
