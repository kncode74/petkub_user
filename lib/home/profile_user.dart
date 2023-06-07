import 'package:firstapp/home/pro_dogs.dart';
import 'package:flutter/material.dart';

class Mainapp extends StatelessWidget {
  const Mainapp({super.key});
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [buildProfileImage()],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ขวัญนภา  ไทยจันทึก',
                  style: TextStyle(
                      color: Color.fromRGBO(70, 147, 137, 1),
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text(
              '@Babykwanisgrewup',
              style: TextStyle(
                  color: Color.fromRGBO(99, 96, 96, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'บันทึกไว้ 4 ตัว',
              style: TextStyle(
                  color: Color.fromRGBO(55, 54, 55, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [tapSaveEdit()],
            ),
            //2box

            //กล่องค้นหา
            //Padding(
            // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 7),
            //child: Container(
            // margin: EdgeInsets.only(top: 0.5, bottom: 0.5),
            // decoration: BoxDecoration(
            //  border: Border.all(width: 1, color: Colors.grey),
            //  color: Colors.white,
            // borderRadius: BorderRadius.circular(12),
            // boxShadow: [BoxShadow()]),
            //child: TextField(
            //  decoration: InputDecoration(
            //      prefixIcon: Icon(Icons.search),
            //     border: InputBorder.none,
            //     hintText: 'ค้นหา'),
            //),
            // ),
            //),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainDog()));
                          },
                          child: getExpanded(
                              'me',
                              '3',
                              'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย',
                              '256415'),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        getExpanded(
                            'me',
                            '3',
                            'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย',
                            '256415')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        getExpanded(
                            'me',
                            'อายุ 3เดือน',
                            'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย',
                            '256415'),
                        const SizedBox(
                          width: 7,
                        ),
                        getExpanded(
                            'me',
                            'อายุ 3เดือน',
                            'เพศผู้ สีวูฟ ตัวเล็ก \nขนสองสี ขนสวย ทรงสวย',
                            '256415')
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tapSaveEdit() => Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 90),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 36,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3, color: const Color.fromRGBO(70, 147, 137, 1)),
                  borderRadius: BorderRadius.circular(10)),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: const Text(
                      'บันทึกไว้',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Material(
              color: const Color.fromRGBO(83, 167, 144, 1),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 36,
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  child: const Text(
                    'แก้ไขโปรไฟล์',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

//เมธอดจัดการข้อมูลสุนัข
  getExpanded(String image, String age, String sub, String id) {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 173,
      width: 158,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(253, 255, 145, 0.989),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 100),
            child: Container(
              height: 22,
              width: 60,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(70, 147, 137, 60),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    id,
                    style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 36,
                  backgroundColor: const Color.fromRGBO(70, 147, 137, 1),
                  child: CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage('images/$image.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 23,
                  width: 83,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        age,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(70, 147, 137, 1),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          sub,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileImage() => const CircleAvatar(
        radius: 50,
        backgroundColor: Color.fromRGBO(139, 204, 178, 1),
        child: CircleAvatar(
          radius: 48,
          backgroundImage: AssetImage('images/me.jpg'),
        ),
      );

  Widget nameUser() => Column(
        children: const [
          Text("ขวัญนภา ไทยจันทึก", style: TextStyle(fontSize: 18)),
          Text('@Babykwanisgrewup')
        ],
      );
}
